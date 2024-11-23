#!/usr/bin/env bash

# Write screenshots to ~/screenshots
mkdir -p ~/screenshots
defaults write com.apple.screencapture location ~/screenshots

# Don't open Photos when pluggin in a device
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Don't write .DS_Store files
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

# Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Safari Webdev
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari.plist IncludeDevelopMenu -bool true
defaults write com.apple.Safari.plist WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari.plist "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show / hide dock faster
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
# Don't show recent apps
defaults write com.apple.dock "show-recents" -bool "false"

killall Dock

# Open Finder in list view by default
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Set default search scope for Finder to 'current directory'
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Show the ~/Library/ directory
chflags nohidden ~/Library

# Make : in clock blink
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"

# Make windows dragable from anywhere in the window using ctrl+cmd
# Note: need to restart apps too
defaults write -g NSWindowShouldDragOnGesture -bool true

# Reset ui
killall SystemUIServer
