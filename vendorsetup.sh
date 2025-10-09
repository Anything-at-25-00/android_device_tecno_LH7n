#!/bin/bash

echo "- Applying Aperture Mediatek HFPS Mode Patch"
cd packages/apps/Aperture
curl https://github.com/Nothing-2A/android_packages_apps_Aperture/commit/a4c34aa57ed56de60f29349a1e6d20cf8160ca15.patch | git am
cd ../../../
