#!/bin/bash

./build.sh

if [ -z "${DEST_DESKTOP_APP}" ]; then
    echo "Destination directory is not set: $DEST_DESKTOP_APP"
    exit 1
fi

echo "Copying driver to $DEST_DESKTOP_APP"
cp -R ./build/BlackHole.driver $DEST_DESKTOP_APP/Claap.driver
echo "Driver copied to $DEST_DESKTOP_APP/Claap.driver"