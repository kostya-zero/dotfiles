# Zero's Dotfiles

> [!IMPORTANT]
> Don't blindly use my dotfiles if you don't know how they work. Use them at your own risk!

These dotfiles are manager with [chezmoi](https://github.com/twpayne/chezmoi). Use this command to apply them:

```shell
chezmoi init --apply https://github.com/kostya-zero/dotfiles.git
```

## Programs

- [NeoVim](https://github.com/neovim/neovim)
- [Nushell](https://github.com/nushell/nushell)
- [WezTerm](https://github.com/wez/wezterm)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [bat](https://github.com/sharkdp/bat)
- [fd](https://github.com/sharkdp/fd)

## Requirements

### LazyVim

- Neovim >= **0.11.2** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- **tree-sitter-cli** and a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter/tree/main?tab=readme-ov-file#requirements)
- **curl** for [blink.cmp](https://github.com/Saghen/blink.cmp) **(completion engine)**
- for [fzf-lua](https://github.com/ibhagwan/fzf-lua) **_(optional)_**
  - **fzf**: [fzf](https://github.com/junegunn/fzf) **(v0.25.1 or greater)**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and _undercurl_:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**
  - [ghostty](https://ghostty.org/) **_(Linux, Macos & Windows)_**

## About me

- [My Website](https://kostyazero.com)
- [My Blog](https://kostyazero.com/blog)
