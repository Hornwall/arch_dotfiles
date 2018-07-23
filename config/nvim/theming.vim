" Colors
autocmd VimEnter,Colorscheme * :hi CursorLine       ctermbg=0
autocmd VimEnter,Colorscheme * :hi CursorLineNr     ctermbg=0
autocmd VimEnter,Colorscheme * :hi StatusLine       ctermfg=2
autocmd VimEnter,Colorscheme * :hi StatusLineNC     ctermfg=0

" Theming
set termguicolors
set background=dark
let hybrid_transparent = 1
colorscheme hybrid
