#!/bin/bash

echo "- Applying Aperture Mediatek HFPS Mode Patch"
cd packages/apps/Aperture
curl https://github.com/Nothing-2A/android_packages_apps_Aperture/commit/9509277efc852ad8bdcce204e0d9cfe104b6d190.patch | git am || {
  RET=$?
  git am --abort >/dev/null 2>&1
}
cd ../../../

if [ $RET -ne 0 ]; then
  echo "ERROR: Patch is not applied! Maybe it's already patched, or you'll have to adapt it to this specific rom source?"
else
  echo "OK: All patched"
fi
