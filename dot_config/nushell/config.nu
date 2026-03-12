alias vim = nvim
alias g = git
alias l = ls --all
alias grep = rg
alias cat = bat --plain

# Git
alias gs = git status
alias gc = git commit -m
alias ga = git add
alias gaa = git add .
alias gl = git log

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
