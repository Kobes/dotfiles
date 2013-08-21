# Enable selection in quick look
defaults write com.apple.finder QLEnableTextSelection -bool TRUE

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Ultra-fast keyboard repeats
defaults write NSGlobalDomain KeyRepeat -int 0

# Stop headphones button from loading iTunes
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
