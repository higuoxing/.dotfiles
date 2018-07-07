" - For Neovim: 
call plug#begin('~/.local/share/nvim/plugged')

" Plugins {

    "===--------------------------------------------
    " Language Plugins
    "===--------------------------------------------
    
    "===--------------------------------------------
    " Tool Plugins
    "===--------------------------------------------
    Plug 'vim-airline/vim-airline'                          " airline tab status tool
    Plug 'scrooloose/nerdtree'                              " navigation tree
    Plug 'yggdroot/indentline'                              " indent
    Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }      " tagbar

    "===--------------------------------------------
    " Apperance Plugins
    "===--------------------------------------------
    Plug 'dracula/vim', { 'as': 'dracula' }  " dracula theme
    Plug 'vim-airline/vim-airline-themes'    " airline theme
"    Plug 'kien/rainbow_parentheses.vim'      " rainbow parentheses

" }

call plug#end()

"===--------------------------------------------
" Control Configs
"===--------------------------------------------

" Key bindings {
    " nmap <C-n> : NERDTreeToggle<CR> " NerdTree key binding
    " nmap <C-t> :TagbarToggle<CR>    " tagbar key binding
    " tnoremap <Esc> <C-\><C-n>
    " nnoremap <leader>o :below 10sp term://$SHELL<cr>i
" }

" Terminal Config {
     tnoremap <Esc> <C-\><C-n>
     nnoremap <leader>o :below 10sp term://$SHELL<cr>i
" }


" language indention {
    " default settings {
        set shiftwidth=2    " indent is 2 spaces
	      set softtabstop=2   " indent is 2 spaces
	      set tabstop=2       " indent is 2 spaces
    " }

    " c/c++ 2-spaces {
	
    " }

    " javascript and coffeescript 2-spaces {
        autocmd Filetype javascript   setlocal ts=2 sw=2 sts=0 expandtab
        autocmd Filetype coffeescript setlocal ts=2 sw=2 sts=0 expandtab
        autocmd Filetype jade         setlocal ts=2 sw=2 sts=0 expandtab
    " }
" }

"===--------------------------------------------
" Applearance Configs
"===--------------------------------------------
set termguicolors                          " set 256 true color
color dracula                              " using dracula theme
syntax on                                  " set syntax highlight on
set nu                                     " line number

"===--------------------------------------------
" Plugin Configs
"===--------------------------------------------

" Airline Config {
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
" }

" NerdTree Config {
    nmap <C-n> : NERDTreeToggle<CR>
    " Close NERDTree if there is only one tab and it is NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Open NERDTree if open a blank file
    " autocmd vimenter * NERDTree            " Start NerdTree when open vim
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" }

" Tagbar Config {
	  let g:tagbar_ctags_bin='/usr/bin/ctags'
    nmap <C-t> :TagbarToggle<CR>
" }

" Indent Config {
    let g:indentLine_enabled = 1
" }

" To use raibow parentheses, please uncomment lines below
" Rainbow Parentheses Config {
"    let g:rbpt_max = 16
"    let g:rbpt_loadcmd_toggle = 0
"    let g:rbpt_colorpairs = [
"      \ ['brown',       'RoyalBlue3'],
"      \ ['red',         'firebrick3'],
"      \ ['Darkblue',    'SeaGreen3'],
"      \ ['darkgray',    'DarkOrchid3'],
"      \ ['darkgreen',   'firebrick3'],
"      \ ['darkcyan',    'RoyalBlue3'],
"      \ ['darkred',     'SeaGreen3'],
"      \ ['darkmagenta', 'DarkOrchid3'],
"      \ ['brown',       'firebrick3'],
"      \ ['gray',        'RoyalBlue3'],
"      \ ['black',       'SeaGreen3'],
"      \ ['darkmagenta', 'DarkOrchid3'],
"      \ ['Darkblue',    'firebrick3'],
"      \ ['darkgreen',   'RoyalBlue3'],
"      \ ['darkcyan',    'SeaGreen3'],
"      \ ['darkred',     'DarkOrchid3'],
"      \ ]
"    au VimEnter * RainbowParenthesesToggle
"    au Syntax * RainbowParenthesesLoadRound
"    au Syntax * RainbowParenthesesLoadSquare
"    au Syntax * RainbowParenthesesLoadBraces
" }
