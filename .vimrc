" Comments area
"
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on


set path+=/**

set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" color scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim' 

let base16colorspace=256  " Access colors present in 256 colorspace


" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
filetype plugin on    " required


" Clipboard setting
" set clipboard=unnamed
" set nu
set hlsearch

set paste

" remappting for coyp
" map <C-c> :w !pbcopy<CR><CR>
			
" auto view for foilding
"autocmd BufWinleave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

" buffer control
" set autowrite

" folder control
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview

" https://github.com/garbas/vim-snipmate
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" Optional:
" Plugin 'honza/vim-snippets'

" https://github.com/garbas/vim-snipmate/issues/256
" SnipMate 

" source ~/.vim/word_complete.vim
" call DoWordComplete()

set bg=dark
" autocmd VimEnter * NERDTree

" indentation
set  expandtab
set  tabstop=4

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-L> :NERDTreeToggle<CR>

augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.txt   set filetype=sh
augroup END
