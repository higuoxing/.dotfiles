call plug#begin('$HOME/.nvim/plugged')
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/defx.nvim'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'

  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Basic configs {

" Behavior configs {

  set termguicolors   " Set 256-colors
  set nu              " Set line number
  syntax on           " Syntex highlighting
  set noshowmode      " Since Vim-airline provide vim-mode status, we could disable the default mode display
  colorscheme onedark " Use colorscheme onedark
  set cursorline      " Highlight current line
  set encoding=UTF-8  " Set UTF-8 enoding
" } End Behavior configs

" Keymap configs {
  inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>" " Use <C-j> to select next option in menu
  inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>" " Use <C-k> to select previoud option in menu

  " Use <ESC> to enter normal mode
  tnoremap <Esc> <C-\><C-n>
  " Use <SPACE>-t to open a terminal
  nnoremap <SPACE>t :below 20sp term://$SHELL<CR>i
" } End Keymap configs

" } End Basic configs

" Vim-airline configs {
  let g:airline_theme = 'onedark'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_symbols.linenr = ' ☰ '
  let g:airline_symbols.branch = ' ⎇ '
" } End Vim-airline configs

" Defx configs {
  call defx#custom#column('icon', {
    \ 'directory_icon': '+',
    \ 'opened_icon': '-'})

  call defx#custom#option('_', {
    \ 'columns': 'icon:indent:filename',
    \ 'direction': 'topleft',
    \ 'split': 'vertical',
    \ 'winwidth': 30 })
  nnoremap <space>ft :Defx -toggle<CR>
  autocmd FileType defx call s:defx_init_settings()

function! s:defx_init_settings() abort
  nnoremap <silent><buffer><expr> l defx#do_action('drop')
  nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> d defx#do_action('remove')
  nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> ; defx#do_action('toggle_ignored_files')
endfunction
"} End Defx configs

" Denite configs {
  " Configs for Shougo/denite.nvim
  " Change default prompt
  call denite#custom#option('default', 'prompt', '❯')

  call denite#custom#var('file/rec', 'command', ['fd', '--full-path'])

  call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')     " Use <C-j> to select next option
  call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap') " Use <C-k> to select previoud option
  call denite#custom#map('insert', '<C-t>', '<denite:move_to_top>', 'noremap')           " Use <C-t> to move to top
  call denite#custom#map('insert', '<C-m>', '<denite:move_to_middle>', 'noremap')        " Use <C-m> to move to middle
  call denite#custom#map('insert', '<C-b>', '<denite:move_to_bottom>', 'noremap')        " Use <C-b> to move to bottom
  call denite#custom#map('insert', '<ESC>', '<denite:enter_mode:normal>', 'noremap')     " Use <CR> to use selection
  call denite#custom#map('insert', '<CR>', '<denite:do_action:default>', 'noremap')      " Use <ESC> to enter normal mode
  call denite#custom#map('normal', '<ESC>', '<NOP>', 'noremap')
  nnoremap <space>sf :Denite file/rec -default-action=vsplit<CR> " search files
  nnoremap <space>sl :Denite line<CR>                            " search lines
  nnoremap <space>sb :Denite buffer<CR>                          " search buffers

  call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
    \ [ '*~', '*.o', '*.exe', '*.bak',
    \ '.DS_Store', '*.pyc', '*.sw[po]', '*.class',
    \ '.hg/', '.git/', '.bzr/', '.svn/',
    \ 'node_modules/', 'bower_components/', 'tmp/', 'log/', 'vendor/ruby',
    \ '.idea/', 'dist/',
    \ '.png', '.jpg', '.jpeg', '.gif',
    \ 'build/',
    \ '__pycache__/', 'venv/',
    \ 'tags', 'tags-*', '/Library/Caches/', '$HOME/Library/Caches/'])
" } End Denite configs

" Languages configs {

" Language client configs {
  call coc#config('languageserver', {
    \ "golang": {
    \   "command": "gopls",
    \   "args": [],
    \   "rootPatterns": ["go.mod", ".vim/", ".git/", ".hg/"],
    \   "filetypes": ["go"]
    \ }
    \})

  call coc#config('languageserver', {
    \ "ccls": {
    \   "command": "ccls",
    \   "filetypes": ["c", "cpp", "objc", "objcpp"],
    \   "rootPatterns": [".ccls", "compile_commands.json", ".vim/", ".git/", ".hg/"],
    \   "initializationOptions": {
    \      "cache": {
    \        "directory": "/tmp/ccls"
    \      }
    \    }
    \ }})
" } End Language client configs

" } End Languages configs
