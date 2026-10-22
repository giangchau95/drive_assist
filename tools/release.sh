#!/usr/bin/env bash
# Build, sign and publish a new OTA release of Drive Assist (stats-only).
# Usage: tools/release.sh "What changed in this version"
# Needs: java, python3. apktool and uber-apk-signer are downloaded on first run.
set -euo pipefail
cd "$(dirname "$0")/.."
ROOT="$PWD"
TOOLS="$ROOT/tools/bin"; mkdir -p "$TOOLS"
APKTOOL="$TOOLS/apktool.jar"; UBER="$TOOLS/uber-apk-signer.jar"
[ -f "$APKTOOL" ] || curl -fsSL -o "$APKTOOL" https://github.com/iBotPeaches/Apktool/releases/download/v2.10.0/apktool_2.10.0.jar
[ -f "$UBER" ]    || curl -fsSL -o "$UBER" https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar

CHANGELOG="${1:-Bug fixes and improvements}"
VC=$(( $(date +%s) / 60 ))                 # always increases -> OTA accepts it
VN="1.0.0-stats-$VC"
python3 - "$VC" "$VN" <<'PY'
import re,sys
p='src/apktool.yml'; y=open(p).read()
y=re.sub(r'versionCode: \d+','versionCode: '+sys.argv[1],y)
y=re.sub(r'versionName: .*','versionName: '+sys.argv[2],y)
open(p,'w').write(y)
PY
WORK="$(mktemp -d)"
java -jar "$APKTOOL" b src -o "$WORK/unsigned.apk"
java -jar "$UBER" -a "$WORK/unsigned.apk" --ks keystore/debug.ks --ksAlias d --ksPass android --ksKeyPass android -o "$WORK/out"
cp "$WORK"/out/*aligned-signed.apk update/drive_assist.apk
python3 - "$VC" "$VN" "$CHANGELOG" <<'PY'
import json,sys
json.dump({"versionCode":int(sys.argv[1]),"versionName":sys.argv[2],
 "apkUrl":"https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/drive_assist.apk",
 "changelog":sys.argv[3]},open('update/version.json','w'),indent=2,ensure_ascii=False)
PY
echo "Built $VN (versionCode $VC) -> update/drive_assist.apk"
echo "Now: git add -A && git commit -m \"release $VN\" && git push"
