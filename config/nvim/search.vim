" Use Ag over Grep
"  set grepprg=rg\ --color=never
set grepprg=ag\ --nogroup\ --nocolor

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0

" Set files and folders to ignore
set wildignore+=*/.git/*,*/tmp/*,*.swp

" Highlighted find and replace
set inccommand=nosplit
