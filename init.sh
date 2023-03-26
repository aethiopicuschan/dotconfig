#!/bin/bash

# Pythonのバージョン (3だとlatestになる)
python_ver=3
# Node.jsのバージョン
node_ver=19.8.1

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

# wget
brew install wget

# GNU grep
brew install grep

# coreutils
brew install coreutils

# Starship
brew install starship

# fish
brew install fish
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"

# peco
brew install peco

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

#### 言語のインストール ####

# Python
brew install pyenv
pyenv install $python_ver
pyenv global $python_ver
curl -sSL https://install.python-poetry.org | python
poetry config virtualenvs.in-project true

# Node.js
brew install nodenv
eval "$(nodenv init -)"
nodenv install $node_ver
nodenv global $node_ver
