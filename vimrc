" Features
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tomasr/molokai'

call vundle#end()

" Plugin conf
let g:jsx_ext_required=0

filetype indent plugin on
syntax on

" Must have
set hidden
set wildmenu
set showcmd
set hlsearch

" Usability
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set clipboard=unnamedplus

" Indentation
set shiftwidth=4
set softtabstop=4
set expandtab

" Mappings
map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" GUI
if has('gui_running')
    set guifont=Inconsolata\ 12
    set guioptions-=L
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
endif

let g:airline_powerline_fonts = 1

" Relative line numbers
set relativenumber

" Color scheme
colors Tomorrow-Night

" Key Combos
let mapleader=","
" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Fold html tag
nnoremap <leader>ft Vatzf
" Select pasted text
nnoremap <leader>v V`]
" Vertical split
nnoremap <leader>w <C-w>v<C-w>l
" Clear search pattern
nnoremap <leader>ü :let @/=""<CR>
" NERDTree
nnoremap <leader>n :NERDTree<CR>
" Tag window
nnoremap <leader>t :TagbarToggle<CR>

" Next / previous buffer
nnoremap ö :bp<CR>
nnoremap ä :bn<CR>

" hjkl for use with splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"noremap <up> <nop>
"noremap <down> <nop>
"noremap <left> <nop>
"noremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap . :

nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
