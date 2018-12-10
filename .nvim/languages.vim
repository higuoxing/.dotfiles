" language indention {
" default settings {
set shiftwidth=4
set softtabstop=4
set tabstop=4
" }

" c/c++ 2-spaces {
autocmd Filetype c setlocal cindent ts=4 sw=4 sts=0 noexpandtab
autocmd Filetype cpp setlocal cindent ts=2 sw=2 sts=0 noexpandtab
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


