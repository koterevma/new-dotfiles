export MAKEFLAGS="-j$(nproc)"
export PATH="$HOME/.local/bin/:$PATH"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export GNUPGHOME="${XDG_DATA_HOME:$HOME/.local/share}"/gpg
