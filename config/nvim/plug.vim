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
call plug#end()

" vim-test/vim-test
let g:test#strategy = "neovim"
let test#javascript#jest#executable = "yarn test" " Run jest through yarn
