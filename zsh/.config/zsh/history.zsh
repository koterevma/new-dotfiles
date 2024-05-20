HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
