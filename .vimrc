filetype off
filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vimsence/vimsence'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'bagrat/vim-buffet'
Plugin 'tpope/vim-endwise'
Plugin 'joshdick/onedark.vim'
Plugin 'tomasr/molokai'
Plugin 'sainnhe/sonokai'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'

call vundle#end()

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0
let g:buffet_always_show_tabline = 0
let g:buffet_powerline_separators = 1
let g:airline#extensions#tabline#enabled = 1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_semantic_triggers = { 'python': ['re!(import\s+|from\s+(\w+\s+(import\s+(\w+,\s+)*)?)?)'] }
let g:ycm_python_binary_path='/usr/bin/python'

colorscheme dracula
set completeopt-=preview
set number
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
syntax on
set termguicolors
set t_Co=256
let g:sublimemonokai_term_italic = 1

set guioptions=

" Commands to execute
autocmd VimEnter * NERDTree

" Shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F6> :tabp<CR>
nnoremap <F7> :tabn<CR>

" Tabulation settings
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" Auto braces and etc 
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
filetype plugin indent on
