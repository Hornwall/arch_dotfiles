" Configure tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
" Section config
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])

" Disable unwanted plugins
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#obsession#enabled = 0
let g:airline#extensions#ale#enabled = 0

" Remove unwanted symbols
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.whitespace = ''
let g:airline_symbols.linenr = ''
