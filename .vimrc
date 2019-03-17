    ">>>Vbundle stuff
:set nocompatible              " be iMproved, required
:set backspace=indent,eol,start
:filetype off                  " required

" set the runtime path to include Vundle and initialize
:set rtp+=~/.vim/bundle/Vundle.vim
:call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Use the following plugins

" Vim theming
Plugin 'dracula/vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'

" File tree navigator
Plugin 'scrooloose/nerdtree'

" Tmux-Vim seamless vim navigation
Plugin 'christoomey/vim-tmux-navigator'

" Fun stuff
Plugin 'zyedidia/vim-snake'

" Node.js stuff
Plugin 'moll/vim-node'

" Scala stuff
Plugin 'derekwyatt/vim-scala'

" Elixir stuff
Plugin 'elixir-editors/vim-elixir'

" Useful stuff
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bogado/file-line'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-eunuch'
"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Visual buffer tabs
Plugin 'zefei/vim-wintabs'
Plugin 'zefei/vim-wintabs-powerline'

" Buffer menu
Plugin 'jlanzarotta/bufexplorer'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
">>>End of Vbundle stuff

" Navigation for buffers
set hidden
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

" Personal customization
:set encoding=utf8
:set number
:set ruler
:set numberwidth=5
:set showmatch
:set visualbell
:set hlsearch
:set wildmenu

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" identation setup
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent

:set cursorline
:syntax on
":set textwidth=80
:set colorcolumn=80
:set background=dark

" Set colorscheme
" dracula theme
:colorscheme dracula 

" papercolor theme
":set background=light
":colorscheme PaperColor

" ayo theme
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
":colorscheme ayu 

" gruvbox theme
":colorscheme gruvbox
"let g:gruvbox_contrast_light = ''
":set background=light

set runtimepath+=~/.vim/bundle/nerdtree

" Autostart NERDTree
":au VimEnter * NERDTree

" Map Ctrl-N to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Window navigation for sane vim users
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

" Map Escape to a custom sequence of keystrokes
":inoremap jk <Esc>
filetype plugin indent on
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2

:autocmd Filetype elixir set softtabstop=2
