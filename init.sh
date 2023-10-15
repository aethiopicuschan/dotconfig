#!/bin/bash

#### Mac自体の設定 ####
# .DS_Storeを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true
# Dockの挙動を早くする
defaults write com.apple.dock autohide-delay -float 0.0
defaults write com.apple.dock autohide-time-modifier -float 0.0
# Finderで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles TRUE
# スペルの訂正を無効にする
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
# スクリーンショット関連
mkdir $HOME/ScreenShot
defaults write com.apple.screencapture location $HOME/ScreenShot
defaults write com.apple.screencapture name ScreenShot
defaults write com.apple.screencapture show-thumbnail -bool false
# スクロール方向
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# 反映させる
killall Finder
killall SystemUIServer
# TouchIdでsudoを使えるようにする
sudo chmod +w /etc/pam.d/sudo
echo "auth       sufficient     pam_tid.so" | sudo tee -a /etc/pam.d/sudo
sudo chmod -w /etc/pam.d/sudo

#### ツールのインストール ####
# Homebrew
eval "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

# Git
brew install git

# gpg
brew install gpg
brew install pinentry-mac
brew tap jorgelbg/tap
brew install pinentry-touchid
defaults write org.gpgtools.common DisableKeychain -bool yes

# wget
brew install wget

# GNU grep
brew install grep

# GNU sed
brew install gnu-sed

# coreutils
brew install coreutils

# curl
brew install curl

# Starship
brew install starship

# fish
brew install fish
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"

# peco
brew install peco

# mas
brew install mas

# jq
brew install jq

# ffmpeg
brew install ffmpeg

# AWS CLI
brew install awscli

# Hugo
brew install hugo

# pre-commit
brew install pre-commit

#### フォントのインストール ####

# FiraCode Nerd Font
brew tap homebrew/cask-fonts
brew install font-fira-nerd-font

#### アプリのインストール ####

# 1Password
brew install --cask 1password

# Chrome
brew install google-chrome

# WezTerm
brew install --cask wezterm

# Docker
brew install --cask docker

# VSCode
brew install --cask visual-studio-code

# ATOK
brew install --cask atok

# LINE
# AppStoreのGUIでサインインしてからでないとエラーになる可能性がある。 see https://github.com/mas-cli/mas/issues/417
mas install 539883307

# Slack
brew install --cask slack

# Authy
brew install --cask authy

#### 言語のインストール ####

# Python (というよりもrye)
curl -sSf https://rye-up.com/get | bash

# Node.js with pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
~/Library/pnpm/pnpm env use --global latest

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Go
brew install go
