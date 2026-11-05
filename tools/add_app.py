#!/usr/bin/env python3
"""Adds or updates an app in apps/catalog.json from an APK file (no Android SDK needed).

  python3 tools/add_app.py path/to/VietMap-Live-3.4.4.apk \
      --url https://github.com/giangchau95/drive_assist/releases/download/apps/vietmap-live-3.4.4.apk \
      --name "VietMap Live"

It reads package, versionCode, versionName, size, SHA-256 and the signing-certificate SHA-256 from the APK.
Upload the APK to the "apps" release first (or after), then commit apps/catalog.json.
Keep the certSha256 of the first version you add: ModeHelper refuses an APK signed by anyone else.
"""
import argparse, hashlib, json, os, struct, sys, zipfile

CATALOG = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'apps', 'catalog.json')


def parse_axml(data):
    """Returns (package, versionCode, versionName) from a binary AndroidManifest.xml."""
    pos = 8
    strings, resmap = [], []
    while pos + 8 <= len(data):
        ctype, hsize, size = struct.unpack_from('<HHI', data, pos)
        if ctype == 0x0001:  # string pool
            n, _sc, flags, sstart, _st = struct.unpack_from('<IIIII', data, pos + 8)
            offs = struct.unpack_from('<%dI' % n, data, pos + 28)
            base = pos + sstart
            for o in offs:
                p = base + o
                if flags & 0x100:  # utf-8
                    l = data[p]; p += 1 if not (l & 0x80) else 2
                    l2 = data[p]; p += 1
                    if l2 & 0x80:
                        l2 = ((l2 & 0x7f) << 8) | data[p]; p += 1
                    strings.append(data[p:p + l2].decode('utf-8', 'replace'))
                else:
                    l = struct.unpack_from('<H', data, p)[0]; p += 2
                    if l & 0x8000:
                        l = ((l & 0x7fff) << 16) | struct.unpack_from('<H', data, p)[0]; p += 2
                    strings.append(data[p:p + 2 * l].decode('utf-16le', 'replace'))
        elif ctype == 0x0180:  # resource ids
            resmap = list(struct.unpack_from('<%dI' % ((size - 8) // 4), data, pos + 8))
        elif ctype == 0x0102:  # start element
            name = struct.unpack_from('<I', data, pos + 20)[0]
            if strings[name] == 'manifest':
                astart, asize, acount = struct.unpack_from('<HHH', data, pos + 24)
                out = {}
                for i in range(acount):
                    a = pos + 16 + astart + i * asize
                    _ns, an, raw, _sz, _r0, dtype, dval = struct.unpack_from('<iiiHBBI', data, a)
                    key = strings[an]
                    if raw != -1:
                        out[key] = strings[raw]
                    else:
                        out[key] = dval
                return out.get('package'), out.get('versionCode'), out.get('versionName')
        pos += size
    raise ValueError('manifest not found')


def signing_cert_sha256(path):
    b = open(path, 'rb').read()
    eocd = b.rfind(b'PK\x05\x06')
    cd_off = struct.unpack_from('<I', b, eocd + 16)[0]
    if b[cd_off - 16:cd_off] != b'APK Sig Block 42':
        return None
    block_size = struct.unpack_from('<Q', b, cd_off - 24)[0]
    p = cd_off - block_size - 8 + 8
    end = cd_off - 24
    found = {}
    while p < end:
        ln = struct.unpack_from('<Q', b, p)[0]
        bid = struct.unpack_from('<I', b, p + 8)[0]
        found[bid] = b[p + 12:p + 8 + ln]
        p += 8 + ln
    val = found.get(0xf05368c0) or found.get(0x7109871a)
    if val is None:
        return None
    # signers (len) -> signer (len) -> signed data (len) -> digests (len), certificates (len) -> cert (len)
    q = 4  # skip signers length
    q += 4  # signer length
    q += 4  # signed data length
    dl = struct.unpack_from('<I', val, q)[0]; q += 4 + dl
    q += 4  # certificates length
    cl = struct.unpack_from('<I', val, q)[0]; q += 4
    return hashlib.sha256(val[q:q + cl]).hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('apk')
    ap.add_argument('--url', required=True, help='https download URL of this APK (a GitHub release asset)')
    ap.add_argument('--name', help='display name (kept from the catalog if omitted)')
    ap.add_argument('--description', help='short description')
    ap.add_argument('--cert', help='certificate SHA-256 if the APK only has a v1 (JAR) signature')
    a = ap.parse_args()

    pkg, vc, vn = parse_axml(zipfile.ZipFile(a.apk).read('AndroidManifest.xml'))
    cert = signing_cert_sha256(a.apk) or (a.cert or '').replace(':', '').lower()
    if not cert:
        sys.exit('Could not read the signing certificate (v1-only APK?). Pass --cert <sha256 hex>.')
    sha = hashlib.sha256(open(a.apk, 'rb').read()).hexdigest()
    cat = json.load(open(CATALOG, encoding='utf-8')) if os.path.exists(CATALOG) else {'schema': 1, 'apps': []}
    entry = next((e for e in cat['apps'] if e.get('package') == pkg), None)
    if entry is None:
        entry = {'package': pkg}
        cat['apps'].append(entry)
    old_cert = entry.get('certSha256')
    if old_cert and old_cert != cert:
        sys.exit('REFUSED: this APK is signed by a different publisher than the one already in the catalog\n  catalog: %s\n  this apk: %s' % (old_cert, cert))
    entry.update({
        'name': a.name or entry.get('name') or pkg,
        'description': a.description or entry.get('description', ''),
        'versionName': vn, 'versionCode': vc, 'size': os.path.getsize(a.apk),
        'sha256': sha, 'certSha256': cert, 'apk': a.url,
    })
    json.dump(cat, open(CATALOG, 'w', encoding='utf-8'), indent=2, ensure_ascii=False)
    open(CATALOG, 'a').write('\n')
    print('%s  %s (%s)  %.1f MB\n  sha256 %s\n  cert   %s' % (pkg, vn, vc, entry['size'] / 1048576, sha, cert))


if __name__ == '__main__':
    main()
