call plug#begin('~/.config/nvim/bundle')

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'lisinge/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'rking/ag.vim'
Plug 'FooSoft/vim-argwrap'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'vim-test/vim-test'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'mg979/vim-visual-multi'
Plug 'neovim/nvim-lspconfig'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'wincent/pinnacle'
Plug 'vim-scripts/ctags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-rbenv'

call plug#end()
" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
let g:deoplete#lsp#handler_enabled = "true"

" vim-test/vim-test
let g:test#strategy = "neovim"
let test#javascript#jest#executable = "yarn test" " Run jest through yarn

" completion-nvim
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" LSP
" lspconfig.tsserver.setup{ on_attach=require'completion'.on_attach }
lua << EOF
local lspconfig = require'lspconfig'

lspconfig.vimls.setup{}
lspconfig.cssls.setup{}
lspconfig.solargraph.setup{}
lspconfig.ocamlls.setup{}
--lspconfig.vuels.setup{}
EOF


function! s:ConfigureBuffer()
    nnoremap <buffer> <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <buffer> <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <buffer> <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>

    if exists('+signcolumn')
      setlocal signcolumn=yes
    endif
endfunction

function! s:SetUpLspHighlights()

  execute 'highlight LspDiagnosticsError ' . pinnacle#decorate('italic,underline', 'ModeMsg')

  execute 'highlight LspDiagnosticsHint ' . pinnacle#decorate('bold,italic,underline', 'Type')

  execute 'highlight LspDiagnosticsHintSign ' . pinnacle#highlight({
        \   'bg': pinnacle#extract_bg('ColorColumn'),
        \   'fg': pinnacle#extract_fg('Type')
        \ })

  execute 'highlight LspDiagnosticsErrorSign ' . pinnacle#highlight({
        \   'bg': pinnacle#extract_bg('ColorColumn'),
        \   'fg': pinnacle#extract_fg('ErrorMsg')
        \ })
endfunction

sign define LspDiagnosticsErrorSign text=✖
sign define LspDiagnosticsWarningSign text=⚠
sign define LspDiagnosticsInformationSign text=ℹ
sign define LspDiagnosticsHintSign text=➤

if has('autocmd')
  augroup WincentLanguageClientAutocmds
    autocmd!

    if exists('*nvim_open_win')
      " TODO: figure out how to detect lsp floating window...
      " Can use floating window.
      autocmd BufEnter __LanguageClient__ call s:Bind()
    endif

    autocmd FileType ruby,javascript,typescript,vim  call s:ConfigureBuffer()

    autocmd ColorScheme * call s:SetUpLspHighlights()
  augroup END
endif

" ludovicchabant/vim-gutentags
let g:gutentags_file_list_command = 'rg --files --ignore-file=.tagignore'
let g:gutentags_ctags_executable_ruby = 'rtags'
let g:gutentags_ctags_executable_javascript = 'ctags'
