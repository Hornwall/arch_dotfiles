"change the mapleader from \ to ,
let mapleader=","

" Mouse support
set mouse=a

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Fix nvim split switching in tmux
if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" vim-tmux-navigator
" fix netrw breaking <c-l>
augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<cr>
endfunction

" Config mappings
nnoremap <leader>cc :e $MYVIMRC<CR>
nnoremap <leader>cs :so $MYVIMRC<CR> 
":AirlineRefresh<CR>
nnoremap <leader>cpi :PlugInstall<CR>
nnoremap <leader>cpu :PlugUpdate<CR>
nnoremap <leader>cpc :PlugClean<CR>

" Split view
nmap <Leader>h :rightbelow split<CR> " Split window horizontal
nmap <Leader>v :rightbelow vsplit<CR> " Split window vertically

nnoremap <C-P> :Files<CR>

" vim-argwrap
nnoremap <silent> <leader>w :ArgWrap<CR>

" Tabularize
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" gitmoji
nmap <Leader>j "=system('gitmoji-selector')<C-M>P
