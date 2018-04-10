" git clone https://github.com/VundleVim/Vundle.vim.git
":PluginInstall

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set path+=/**
" set mouse=a

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" color scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim' 

let base16colorspace=256  " Access colors present in 256 colorspace

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set autoread
" set updatetime=1
" au CursorHold * checktime

" Clipboard setting
set clipboard=unnamed
set nu
set hlsearch

" indentation
set  expandtab
set  shiftwidth=4
set  softtabstop=4
set  showtabline=4

" remappting for coyp
map <C-c> :w !pbcopy<CR><CR>

" auto view for foilding
autocmd BufWinleave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" buffer control
set autowrite

" folder control
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" https://github.com/garbas/vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" https://github.com/garbas/vim-snipmate/issues/256
" SnipMate 

source ~/.vim/word_complete.vim
call DoWordComplete()

set bg=dark
autocmd VimEnter * NERDTree
