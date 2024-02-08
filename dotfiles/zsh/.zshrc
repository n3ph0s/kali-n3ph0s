fpath=($ZDOTDIR/external $fpath)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

source "$XDG_CONFIG_HOME/zsh/aliases"

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

# Load the Custom Prompt
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Directory Stack (pushd & popd)
# Push the current directory visited on to the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# Enabling VI Mode
bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode && cursor_mode

# # The following launches the editor so that it can be manipulated in the editor
# autoload -Uz edit-command-line
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line

source ~/dotfiles/zsh/external/bd.zsh

if [ $(command -v "fzf") ]; then
    source /usr/share/doc/fzf/examples/completion.zsh
    source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

source ~/dotfiles/zsh/scripts.sh

# Load Starship Prompt (to install run command `curl -sS https://starship.rs/install.sh | sh`)
eval "$(starship init zsh)"


# NOTE: This should be at the end of the .zshrc so that everything loaded before can use syntax highlighting if needed
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
