#!/bin/bash

APPLICATIONS_PATH=/Applications
DOWNLOADS_PATH=~/Downloads
ITERM_PATH=./iterm

# Iterm
curl https://iterm2.com/downloads/stable/iTerm2-3_2_1.zip > $DOWNLOADS_PATH/iterm.zip
unzip -q -d APPLICATIONS_PATH $DOWNLOADS_PATH/iterm.zip
rm $DOWNLOADS_PATH/iterm.zip

# Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -a $ITERM_PATH/fonts/. ~/Library/Fonts
cp -f $ITERM_PATH/zsh/.zshrc ~/.zshrc
cp -f $ITERM_PATH/zsh/remy.zsh-theme ~/.oh-my-zsh/themes/remy.zsh-theme
