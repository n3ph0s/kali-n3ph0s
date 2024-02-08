#!/bin/bash

#####################
#       Kitty       #
#####################

rm -rf "$HOME/.config/kitty"
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config"

#####################
#       NeoVim      #
#####################

rm -rf "$HOME/.config/nvim"
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config"

#####################
#       ZSH         #
#####################

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

#####################
#       Fonts       #
#####################

mkdir -p "$HOME/.fonts"
cp -rf "$HOME/dotfiles/fonts/." "$HOME/.fonts"

#####################
#       Starship    #
#####################

ln -sf "$HOME/dotfiles/starship.toml" "$HOME/.config"

#####################
#       TMUX        #
#####################

rm -rf "$HOME/.config/tmux"
ln -sf "$HOME/dotfiles/tmux" "$HOME/.config"

#####################
#       Bat         #
#####################

rm -rf "$HOME/.config/bat"
ln -sf "$HOME/dotfiles/bat" "$HOME/.config"
batcat cache --build
