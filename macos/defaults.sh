# Set Finder list view to default
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Don't hide the ~/Library folder in Finder
chflags nohidden ~/Library

# Write screenshots to ~/screenshots
mkdir -p ~/screenshots
defaults write com.apple.screencapture location ~/screenshots

# Don't open Photos when plugging in a device
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Don't write .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkSTores -bool true

# Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Reset UI
killall SystemUIServer

# Safari webdev
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true 
defaults write com.apple.Safari IncludeDevelopMenu -bool true 
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true 
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true 
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

