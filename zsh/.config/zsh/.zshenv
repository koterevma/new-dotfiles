export MAKEFLAGS="-j$(nproc)"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}"/gpg

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
if [ -x /usr/bin/go ] && ! ( echo "$PATH" | grep -F '.local/bin' >/dev/null ); then
    echo GO BIN NOT IN PATH
    export PATH="${GOPATH}/bin:${PATH}"
fi
if ! ( echo "$PATH" | grep -F '.local/bin' >/dev/null ); then
    export PATH="$HOME/.local/bin:$PATH"
fi

export CARGO_HOME="$XDG_DATA_HOME"/cargo

# Use systemctl --user enable --now ssh-agent.service
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}"/ssh-agent.socket
