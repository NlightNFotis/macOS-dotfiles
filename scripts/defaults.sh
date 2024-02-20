#!/bin/sh

user=$(stat -f %Su /dev/console);

sudo -u $user defaults write com.apple.menuextra.battery -ShowPercent YES
