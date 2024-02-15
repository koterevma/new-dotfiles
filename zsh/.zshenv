# Regular environment variables
export EDITOR="nvim"
export MAKEFLAGS="-j$(nproc)"
export TERM="alacritty" # "xterm-256color"
export VISUAL="nvim"

# XDG directories setup
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# HOME dotfiles cleanup
export BYOBU_CONFIG_DIR="$XDG_CONFIG_HOME/byobu"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export PYTHONHISTFILE="$XDG_DATA_HOME/python/python_history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# If using omz
# export ZSH="$XDG_CONFIG_HOME/zsh/oh-my-zsh"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

# vim:ft=sh
