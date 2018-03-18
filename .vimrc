set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'artemkin/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'dracula/vim'
Plugin 'vim-scripts/winmanager'
Plugin 'oplatek/Conque-Shell'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
filetype plugin indent on

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		    " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number              " set numbers
set ruler               " set ruler
set hlsearch            " highlight searching word
set incsearch           " highlight in searching word
set autoindent          " auto indent on
set cindent
set cinoptions=g-1
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab           " set indent -> 4 spaces
color dracula
" Plugin config
" >>NerdTree
" Open a NerdTree automatically when vim starts up and no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open a NerdTree automatically when vim starts up
" autocmd vimenter * NERDTree
" Open a NerdTree automatically when vim starts up on opening a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) &&
" !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeShowBookmarks=1
let NERDTreeStatusline=0
let g:NERDTree_title = "[NERDTREE]"
" let NERDChristmasTree=1
"
" >>Tagbar
map <C-t> : Tlist<CR>
" map <C-t> :TagbarToggle<CR>
let g:Tagbar_title = "[Tagbar]"
let g:Tlist_Show_One_File = 1
" let g:tagbar_vertical = 10

" >>minibufexpl
let g:miniBufExplMapWindowNavVim = 1     
let g:miniBufExplMapWindowNavArrows = 1     
let g:miniBufExplMapCTabSwitchBufs = 1     
let g:miniBufExplModSelTarget = 1    
let g:miniBufExplMoreThanOne=0 

" >>winManager
let g:winManagerWindowLayout = 'NERDTree|TagList'
" to disable blank page
nmap <silent> wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>
let g:winManagerWidth = 30

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" >>vim air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" >> haskell-support
let g:haskell_classic_highlighting = 1

" >> conque shell config
