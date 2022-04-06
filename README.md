# zero-dotfile
This repository include my own configuration files for vim, fish and other.
You can use it on your computer or use it as a template!
But, firstly, to protect yourself from errors and something like this, please read requirements.

## Requirements
There a full list of requirements for this configs:

## VIM
There plugins and new shortcuts for Vim. 

### Plugins
- **Vundle** - Plugin manager for Vim, i use this for my config. [Repository](https://github.com/VundleVim/Vundle.vim)
- **vim-airline** - Status bar for Vim. [Repository](https://github.com/vim-airline/vim-airline)
- **vim-airline-themes** - Themes for AirLine status bar. [Repository](https://github.com/vim-airline/vim-airline-themes)
- **vim-devicons** - Dev Icons for Vim and AirLine. Require nerd fonts. [Repository](https://github.com/ryanoasis/vim-devicons)
- **YouCompleteMe** - Completer for Vim. Install manually. Read about installation at YCM repo. [Repository](https://github.com/ycm-core/YouCompleteMe)
- **vimsence** - Plugin for Discord Presence. [Repository](https://github.com/vimsence/vimsence)
- **vim-fugitive** - Git wrapper for Vim. [Repository](https://github.com/tpope/vim-fugitive)
- **vim-repeat** - Required for vim-surround. [Repository](https://github.com/tpope/vim-repeat)
- **vim-surround** - Sets symbols around word/line. [Repository](https://github.com/tpope/vim-surround)
- **vim-commentary** - Allow comment string with `gcc` command. [Repository](https://github.com/tpope/vim-commentary)
- **vim-buffet** - IDE-like tab line. [Repository](https://github.com/bagrat/vim-buffet)
- **vim-endwise** - This is a simple plugin that helps to end certain structures automatically. [Repository](https://github.com/tpope/vim-endwise)
- **onedark.vim** - One Dark theme for Vim. [Repository](https://github.com/joshdick/onedark.vim)
- **molokai** - Theme for vim looks like Monokai from Sublime Text. [Repository](https://github.com/tomasr/molokai)
- **sonokai** - Another Monokai-like theme. [Repository](https://github.com/sainnhe/sonokai)
- **dracual** - Dracula theme for Vim. [Repository](https://github.com/dracula/vim)
- **nerdtree** - File explorer for Vim. [Repository](https://github.com/scrooloose/nerdtree)
- **syntastic** - Syntax debuger. [Repository](https://github.com/scrooloose/syntastic)
- **tabular** - Fix tabs (its dont work btw, use method in config). [Repository](https://github.com/godlygeek/tabular)

### Shortcuts
- **F6** - Open previous tab.
- **F7** - Open nex tab.
- **CTRL+N** - Open NerdTree.
- **CTRL+T** - Show/Hide NerdTree.
- **CTRL+F** - Search item in NerdTree.

### Other addons
- When you press bracket, Vim automatically sets close bracket behind cursor. In vanilla Vim when use "{" sets it onece, but with this config it sets close bracket "}" behind cursor. It works for quotes too.
- In this config used Dracula color scheme. To set your own open .vimrc config and find line `colorscheme dracula`. Replace `dracula` keyword with name of theme thats you want to set, like in example:
```vim
" Set molokai as color scheme
colorscheme molokai
```
- Config include fix for tabulation. Now tabs use 4 spaces.
```cpp
#include <iostream>
int main(){
    // Demonstration of tabulation fix
    std::cout << "Hello!";
}
```
