#!/bin/sh

# Enable battery percentage on notification area.
defaults -currentHost write com.apple.controlcenter.plist BatteryShowPercentage -bool true
# Update Activity Monitor faster.
defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "2"
# Show CPU percentage for each app on dock.
defaults write com.apple.ActivityMonitor "IconType" -int "5"
# Display notifications when music changes.
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "true"
# Focus follows the mouse cursor to any Terminal windows.
defaults write com.apple.Terminal "FocusFollowsMouse" -bool "true"
# Group windows by application.
defaults write com.apple.dock "expose-group-apps" -bool "true"
# Dock icon size.
defaults write com.apple.dock "tilesize" -int "36"
# Dock position left.
defaults write com.apple.dock "orientation" -string "left"
