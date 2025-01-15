#!/bin/zsh

set -e

# https://gist.github.com/GuillaumeFalourd/4efc73f1a6014b791c0ef223a023520a
DEVELOPER_ID_APP=$1
export "DEVELOPER_ID_APP=$DEVELOPER_ID_APP"

signFile() {
  filename=$1
  echo "Signing FILE: $filename"
  /usr/bin/codesign --deep -s "$DEVELOPER_ID_APP" -f --timestamp -i "com.kitifylabs.kitify" -o runtime "$filename"
}

export -f signFile
if [ -d "build/macos/Build/Products/Release/Kitify.app" ]; then
    cd build/macos/Build/Products/Release
    find Kitify.app -exec bash -c 'signFile "{}"' \;
else
  echo "Directory (build/macos/Build/Products/Release/Kitify.app) does not exist!"
  exit 1
fi

exit 0
