set -U fish_greeting ""

set -x EDITOR nvim
set -x VISUAL nvim
set -x GPG_TTY $(tty)
set -x RUSTFLAGS "-C linker=clang -C link-arg=-fuse-ld=mold"

alias vim nvim
alias ls "eza --icons"
alias la "eza --icons --all --long"
alias ll "eza --icons --long"
alias l "eza --icons --long"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# mise
mise activate fish | source
