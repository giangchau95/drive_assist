#!/usr/bin/env bash
# Gỡ HOÀN TOÀN Drive Assist (stats-only) khỏi xe qua ADB.
# Usage: tools/uninstall.sh [<ip-xe>:5555]
set -u
[ "${1:-}" ] && adb connect "$1"
for pkg in com.geely.drivemem com.geely.modehelper com.geely.installer; do
  printf '%-24s ' "$pkg"
  adb uninstall "$pkg" 2>&1 | tail -1
done
echo "Còn sót?"; adb shell pm list packages | grep -E "com.geely.(drivemem|modehelper|installer)" || echo "Sạch."
