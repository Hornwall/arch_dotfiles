call plug#begin('~/.config/nvim/bundle')

Plug 'christoomey/vim-tmux-navigator'
Plug 'lisinge/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'rking/ag.vim'
Plug 'FooSoft/vim-argwrap'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'mg979/vim-visual-multi'
Plug 'wincent/pinnacle'
Plug 'vim-scripts/ctags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" ludovicchabant/vim-gutentags
let g:gutentags_file_list_command = 'rg --files --ignore-file=.tagignore'
let g:gutentags_ctags_executable_ruby = 'rtags'
let g:gutentags_ctags_executable_javascript = 'ctags'
