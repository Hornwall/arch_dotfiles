" change the mapleader from \ to ,
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

nmap <Leader><Leader> <c-^>
map <Leader><Leader> <Plug>(easymotion-prefix)
nmap <Leader>h :rightbelow split<CR> " Split window horizontal
nmap <Leader>v :rightbelow vsplit<CR> " Split window vertically
nmap <Leader>av :AV<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>q :NERDTreeToggle<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>l :TestLast<CR> 
nmap <silent> <leader>a :TestSuite<CR>

" Fugitive mappings
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gbl :Gblame<CR>
nnoremap <Leader>gbr :Gbrowse<CR>
nnoremap <Leader>gpl :Gpull<CR>
nnoremap <Leader>gps :Gpush<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

" Config mappings
nnoremap <leader>cc :e $MYVIMRC<CR>
nnoremap <leader>cs :so $MYVIMRC<CR>:AirlineRefresh<CR>
nnoremap <leader>cpi :PlugInstall<CR>
nnoremap <leader>cpu :PlugUpdate<CR>
nnoremap <leader>cpc :PlugClean<CR>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" FZF
nnoremap <space>f :FilesMru<CR>
nnoremap <C-P> :Files<CR>
nnoremap <space>t :Tags<CR>
nnoremap <space>r :Rg<CR>
nnoremap <space>c :Commits<CR>

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

" Ale
map <Leader>f :ALEFix<CR>

" vim-argwrap
nnoremap <silent> <leader>w :ArgWrap<CR>

" Tag bindings
nnoremap <silent><expr> <c-w><c-]> ':<c-u>vert wincmd ]<cr>'
nnoremap <silent><expr> <c-w>] ':<c-u>vert wincmd ]<cr>'

" deliMate
inoremap <expr> <C-j> delimitMate#JumpAny()

" gitmoji
nmap <Leader>j "=system('gitmoji-selector')<C-M>P
