#!/usr/bin/env bash

# CHROME_EXEC=/Applications/Google Chrome.app/Contents/MacOS/Google Chrome
# CHROME_LOG=$HOME/Library/Application\ Support/Google/Chrome/chrome_debug.log

# $CHROME_EXEC --enable-logging --v=4

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-logging --v=4 --vmodule=\*third_party/libjingle/source/talk/session/media\*=4
# /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-logging --vmodule=*libjingle/*=3,*=0
