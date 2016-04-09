" Features
set nocompatible
filetype off

" vim-plug
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'xolox/vim-misc'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'jszakmeister/vim-togglecursor'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tomasr/molokai'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'
" Plug 'zefei/vim-wintabs'
Plug 'ap/vim-buftabline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'xolox/vim-session'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'

call plug#end()
filetype indent plugin on
syntax on

" Plug conf
let g:session_autosave = 'no'
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup=1
let g:ctrlp_map='<c-p>'
let g:javascript_enable_domhtmlcss=1
let g:jsx_ext_required=0
let g:used_javascript_libs='jquery,underscore,angularjs,react,flux,chai,jasmine'
let g:syntastic_javascript_checkers=['eslint']
let g:tern_show_arguments_hints='on_hold'
let g:tern_show_signature_in_pum=1

" YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
let g:UltiSnipsExpandTrigger = '<nop>'
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCR()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCR()<CR>" : "\<CR>"
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

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

" Platform specific
if has("unix")
    let s:uname = system("echo -n \"$(uname)\"")
    if s:uname == "Darwin\n"
        set clipboard=unnamed
    endif
endif


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

"nnoremap / /\v
"vnoremap / /\v
"nnoremap <tab> %
"vnoremap <tab> %
