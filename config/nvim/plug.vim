call plug#begin('~/.config/nvim/bundle')

runtime macros/matchit.vim

" Define bundles via Github repos
Plug 'danro/rename.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'nanki/treetop.vim'
Plug 'timcharper/textile.vim'
Plug 'tpope/vim-cucumber'
Plug 'cakebaker/scss-syntax.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-rbenv'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/greplace.vim'
Plug 'xenoterracide/html.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'rking/ag.vim'
Plug 'jamessan/vim-gnupg'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-editors/vim-elixir'
Plug 'derekwyatt/vim-scala'
Plug 'szw/vim-g'
Plug 'radenling/vim-dispatch-neovim'
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'
Plug 'editorconfig/editorconfig-vim'
Plug 'ngmy/vim-rubocop'
Plug 'jelera/vim-javascript-syntax'
Plug 'chrisbra/Colorizer'
Plug 'lisinge/vim-hybrid'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'
Plug 'mattn/gist-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0rp/ale'
Plug 'FooSoft/vim-argwrap'
Plug 'ludovicchabant/vim-gutentags'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'posva/vim-vue'

call plug#end()

set nocompatible
if has('autocmd')
  filetype indent plugin on
endif

" tpope/vim-fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete ' Delete fugitive buffers

" Raimondi/delimitMate
let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=2
let g:delimitMate_jump_expansion=1

" thoughtbot/vim-rspec
let g:rspec_command = 'Dispatch bundle exec rspec {spec} -f progress'


" mattn/gist-vim
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'

" nathanaelkane/vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

" ludovicchabant/vim-gutentags
let g:gutentags_file_list_command = 'rg --files --ignore-file=.tagignore'
let g:gutentags_ctags_executable_ruby = 'rtags'

" w0rp/ale
let g:ale_fixers = {
\   'ruby': [
\     'rubocop',
\   ],
\   'elixir': [
\     'mix_format'
\   ]}

" FooSoft/vim-argwrap
let g:argwrap_padded_braces = '{'
nnoremap <silent> <leader>w :ArgWrap<CR>

