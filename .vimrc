">>>Vbundle stuff
:set nocompatible              " be iMproved, required
:filetype off                  " required

" set the runtime path to include Vundle and initialize
:set rtp+=~/.vim/bundle/Vundle.vim
:call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Use plugins
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
">>>End of Vbundle stuff


" Personal customization
:set encoding=utf8
:set number
:set ruler
:set numberwidth=5
:set showmatch
:set visualbell
:set hlsearch

" identation setup
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent


:set cursorline
:syntax on
:set textwidth=80
:set colorcolumn=80
:set background=dark
:colorscheme dracula 
