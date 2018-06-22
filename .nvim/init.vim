" - For Neovim: 
call plug#begin('~/.local/share/nvim/plugged')

" Plugins {

    "===--------------------------------------------
    " Language Plugins
    "===--------------------------------------------
    
    "===--------------------------------------------
    " Tool Plugins
    "===--------------------------------------------
    Plug 'vim-airline/vim-airline'           " airline tab status tool


    "===--------------------------------------------
    " Apperance Plugins
    "===--------------------------------------------
    Plug 'dracula/vim', { 'as': 'dracula' }  " dracula theme
    Plug 'vim-airline/vim-airline-themes'    " airline theme

" }

call plug#end()

"===--------------------------------------------
" Control Configs
"===--------------------------------------------

" Key bindings {

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

