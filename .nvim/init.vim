" - For Neovim:
" Plugins Config {
source ./basic.vim        " Basic configs
source ./plugins.vim      " Plugins configs
source ./languages.vim    " Languanges configs
source ./keymap.vim       " Keymap configs
source ./appearance.vim   " Appearance configs
source ./status_line.vim  " Status bar configs
" }

"===--------------------------------------------
" Control Configs
"===--------------------------------------------

" Color Scheme& Plugins {
"   colorscheme {
      " font settings {
        " }
      " }
"   }
" }

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


" NerdTree Config {
    nmap <C-m> : NERDTreeToggle<CR>
    " Close NERDTree if there is only one tab and it is NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Open NERDTree if open a blank file
    " autocmd vimenter * NERDTree            " Start NerdTree when open vim
    " autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  " open nerdtree if no file is specified
" }

" Buffer Config {
    set hidden
    nnoremap <C-n> :bnext <CR>
    nnoremap <C-p> :bprev <CR>
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

" LSP Config {
  let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
  \ }
  nnoremap <C-l> :call LanguageClient_contextMenu()<CR>
" }
