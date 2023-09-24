fpath+="${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}/completions"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

plug "$ZDOTDIR/aliases.zsh"
plug "/usr/share/fzf/key-bindings.zsh" 

HISTFILE="$XDG_DATA_HOME/zsh_history"

# Run ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 3h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Set PATH if not already
if ! (printenv PATH | grep '\.local/bin' 2>&1 >/dev/null); then
    export PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$GOPATH/bin:$PATH"

# Not in env because it should update for every shell
export GPG_TTY="$(tty)"  # Gpg fix problem with signing

# Load and initialise completion system
autoload -Uz compinit
compinit
