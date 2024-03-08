#!/usr/bin/env bash

# Write screenshots to ~/screenshots
mkdir -p ~/screenshots
defaults write com.apple.screencapture location ~/screenshots

# Don't open Photos when pluggin in a device
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Don't write .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Reset ui
killall SystemUIServer

# Safari Webdev
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show / hide dock faster
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock
