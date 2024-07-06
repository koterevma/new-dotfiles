export MAKEFLAGS="-j$(nproc)"
export PATH="$HOME/.local/bin/:$PATH"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}"/gpg

# Use systemctl --user enable --now ssh-agent.service
export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket
