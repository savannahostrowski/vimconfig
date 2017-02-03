set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" "Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"
 Plugin 'colepeters/spacemacs-theme.vim'
"
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
"filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"

if (has("termguicolors"))
    set termguicolors
endif
set background=dark
colorscheme spacemacs-theme

set nu

" 2 space tabs
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Spaces are preferred to tabs for ease of insertion
set expandtab

" VIM is not VI
set nocompatible

syntax on
filetype on
filetype plugin on
filetype indent on

" Highlight whitespace at the end of lines
" Create a new colour scheme
highlight ExtraWhitespace ctermbg=darkgreen
" Add this colour scheme so it is always on
au ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen
" Match all trailing whitespace /\s\+$/
" but not for lines where we are currently appending to
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufEnter * match ExtraWhitespace /\s\+$/

" 4 tab spacing in python
au FileType python set shiftwidth=4
au FileType python set tabstop=4
au FileType python set softtabstop=4

" Highlight search results
set hlsearch

" Black column at 80
set cc=80
highlight ColorColumn ctermbg=0

" Save cursor position on J
 nnoremap J mUJ`U

" Do not continue comments
 au FileType java,javascript,c,cpp setlocal comments-=:// comments+=f://
 au FileType python,coffee setlocal comments-=:# comments+=f:#

" Insert newline when hitting enter
 nnoremap <CR> o<Esc>k
" Insert newline before this one when hitting shift-enter
" This doesn't work in terminal VIM
 nnoremap <S-Enter> O<Esc>j

" Don't move when searching current word
nnoremap # #N

execute pathogen#infect()

let mapleader = "\<Space>"

" Remove search highlighting on comma
nmap , :noh <CR>
set showcmd

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
