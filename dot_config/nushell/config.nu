# main aliases
alias vim = nvim
alias g = git
alias grep = rg
alias cat = bat --plain
alias w = winget

# eza
alias ls = eza --icons
alias l = ls
alias la = eza --long --all --icons
alias ll = eza --long --icons

# Git
alias gs = git status
alias gc = git commit -m
alias ga = git add
alias gaa = git add .
alias gl = git log

# postgres on windows
alias start_postgres = sudo sc start postgresql-x64-18
alias get_postgres = sudo sc query postgresql-x64-18
alias stop_postgres = sudo sc stop postgresql-x64-18

# Neovim config
alias vimconfig = cd ~/.config/nvim

$env.config = {
    show_banner: false,
    history: {
        file_format: "plaintext",
    }
}

source ~/.zoxide.nu
