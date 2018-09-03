" - For Neovim:
call plug#begin('~/.local/share/nvim/plugged')

    "===--------------------------------------------
    " Language Plugins
    "===--------------------------------------------
    Plug 'octol/vim-cpp-enhanced-highlight'                 " cpp highlight plugin
    Plug 'rhysd/vim-clang-format'                           " clang-format
    Plug 'pangloss/vim-javascript'                          " js plugin

    "===--------------------------------------------
    " Tool Plugins
    "===--------------------------------------------
    Plug 'scrooloose/nerdtree'                              " navigation tree
    Plug 'yggdroot/indentline'                              " indent
    Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }      " tagbar
    Plug 'jiangmiao/auto-pairs'                             " auto pairs
    Plug 'godlygeek/tabular'														" Tabulize code

    "===--------------------------------------------
    " Apperance Plugins
    "===--------------------------------------------
    Plug 'dracula/vim', { 'as': 'dracula' }  " dracula theme
    Plug 'itchyny/lightline.vim'
    Plug 'kien/rainbow_parentheses.vim'      " rainbow parentheses

" }

call plug#end()

"===--------------------------------------------
" Control Configs
"===--------------------------------------------

" Key bindings                  " terminal{
    " nmap <C-n> : NERDTreeToggle<CR> " NerdTree key binding
    " nmap <C-t> :TagbarToggle<CR>    " tagbar key binding
    " tnoremap <Esc> <C-\><C-n>       " exit insert mode of terminal emulator
" }

" language indention {
    " default settings {
        set shiftwidth=2    " indent is 2 spaces
        set softtabstop=2   " indent is 2 spaces
        set tabstop=2       " indent is 2 spaces
        set expandtab       " always using tab
    " }

    " c/c++ 2-spaces {
        autocmd Filetype c setlocal cindent
        autocmd Filetype cpp setlocal cindent
        set cinoptions=g-1
    " }

    " python {
        autocmd Filetype javascript   setlocal ts=2 sw=2 sts=0
        autocmd Filetype coffeescript setlocal ts=2 sw=2 sts=0
        autocmd Filetype jade         setlocal ts=2 sw=2 sts=0
    " }

    " javascript and coffeescript 2-spaces {
        autocmd Filetype javascript   setlocal ts=2 sw=2 sts=0
        autocmd Filetype coffeescript setlocal ts=2 sw=2 sts=0
        autocmd Filetype jade         setlocal ts=2 sw=2 sts=0
    " }
" }

"===--------------------------------------------
" Applearance Configs
"===--------------------------------------------
set termguicolors                          " set 256 true color
set nu                                     " line number
set cursorline                             " highlight row
set cursorcolumn                           " highlight column
set noshowmode                             " do not show mode
color dracula                              " using dracula theme
syntax on                                  " set syntax highlight on

"===--------------------------------------------
" Plugin Configs
"===--------------------------------------------

" Cpp Enhanced Highlight {
    let g:cpp_class_scope_highlight = 1
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_experimental_template_highlight = 1
    " let g:cpp_experimental_simple_template_highlight = 1
    let g:cpp_concepts_highlight = 1
" }

" light line config {
    let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, world!'
      \ },
      \ }
" }


" NerdTree Config {
    nmap <C-n> : NERDTreeToggle<CR>
    " Close NERDTree if there is only one tab and it is NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Open NERDTree if open a blank file
    " autocmd vimenter * NERDTree            " Start NerdTree when open vim
    " autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  " open nerdtree if no file is specified
" }

" Tagbar Config {
    let g:tagbar_ctags_bin='/usr/local/bin/ctags'
    nmap <C-t> :TagbarToggle<CR>
" }

" Terminal Config {
     tnoremap <Esc> <C-\><C-n>
     nnoremap <leader>o :below 10sp term://$SHELL<cr>i
" }

" Indent Config {
    let g:indentLine_enabled = 1
" }

" Rainbow Parentheses Config {
    " let g:rbpt_max = 16
    " let g:rbpt_loadcmd_toggle = 0
    " let g:rbpt_colorpairs = [
    "   \ ['brown',       'RoyalBlue3'],
    "   \ ['red',         'firebrick3'],
    "   \ ['Darkblue',    'SeaGreen3'],
    "   \ ['darkgray',    'DarkOrchid3'],
    "   \ ['darkgreen',   'firebrick3'],
    "   \ ['darkcyan',    'RoyalBlue3'],
    "   \ ['darkred',     'SeaGreen3'],
    "   \ ['darkmagenta', 'DarkOrchid3'],
    "   \ ['brown',       'firebrick3'],
    "   \ ['gray',        'RoyalBlue3'],
    "   \ ['black',       'SeaGreen3'],
    "   \ ['darkmagenta', 'DarkOrchid3'],
    "   \ ['Darkblue',    'firebrick3'],
    "   \ ['darkgreen',   'RoyalBlue3'],
    "   \ ['darkcyan',    'SeaGreen3'],
    "   \ ['darkred',     'DarkOrchid3'],
    "   \ ]
    " au VimEnter * RainbowParenthesesToggle
    " au Syntax * RainbowParenthesesLoadRound
    " au Syntax * RainbowParenthesesLoadSquare
    " au Syntax * RainbowParenthesesLoadBraces
" }
"
" Javascript {
  let g:javascript_conceal_function             = "ƒ"
  let g:javascript_conceal_null                 = "ø"
  let g:javascript_conceal_this                 = "@"
  let g:javascript_conceal_return               = "⇚"
  let g:javascript_conceal_NaN                  = "ℕ"
  let g:javascript_conceal_static               = "•"
  let g:javascript_conceal_super                = "Ω"
  let g:javascript_conceal_arrow_function       = "⇒"
" }
