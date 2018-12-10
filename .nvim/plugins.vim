call plug#begin('./plugged')
    "===--------------------------------------------
    " Language Plugins
    "===--------------------------------------------
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'octol/vim-cpp-enhanced-highlight'                 " cpp highlight plugin
    Plug 'pangloss/vim-javascript'                          " js plugin

    "===--------------------------------------------
    " Tool Plugins
    "===--------------------------------------------
    Plug 'scrooloose/nerdtree'                              " navigation tree
    Plug 'yggdroot/indentline'                              " indent
    Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }      " tagbar
    Plug 'jiangmiao/auto-pairs'                             " auto pairs
    Plug 'godlygeek/tabular'                                " tabulize code
    Plug 'fidian/hexmode'                                   " hexmode
    Plug 'tpope/vim-fugitive'                               " fugitive, gitbranch

    "===--------------------------------------------
    " Apperance Plugins
    "===--------------------------------------------
    Plug 'flazz/vim-colorschemes'                           " colorschemes
    Plug 'itchyny/lightline.vim'
    Plug 'kien/rainbow_parentheses.vim'      " rainbow parentheses
" }

call plug#end()
