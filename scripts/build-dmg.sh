#!/bin/zsh

set -e

test -f Kitify.dmg && rm -f Kitify.dmg

appdmg ./appdmg.json ./Kitify.dmg

exit 0
