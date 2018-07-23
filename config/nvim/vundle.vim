" Declare bundles are handled via Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim/
call vundle#begin("~/.config/nvim/bundle")

runtime macros/matchit.vim

" Let Vundle manage Vundle
Bundle "gmarik/Vundle.vim"

" Define bundles via Github repos
Bundle "danro/rename.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "kien/ctrlp.vim"
Bundle "nanki/treetop.vim"
Bundle "timcharper/textile.vim"
Bundle "tpope/vim-cucumber"
Bundle 'cakebaker/scss-syntax.vim'
Bundle "slim-template/vim-slim.git"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-repeat"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-bundler"
Bundle "tpope/vim-rake"
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-dispatch"
Bundle "tpope/vim-rhubarb"
Bundle "tpope/vim-projectionist"
Bundle "tpope/vim-vinegar"
Bundle "tpope/vim-rbenv"
Bundle "vim-scripts/matchit.zip"
Bundle "vim-scripts/ctags.vim"
Bundle "vim-scripts/greplace.vim"
Bundle "xenoterracide/html.vim"
Bundle "terryma/vim-multiple-cursors"
Bundle "godlygeek/tabular"
Bundle "rking/ag.vim"
Bundle "jamessan/vim-gnupg"
Bundle "christoomey/vim-tmux-navigator"
Bundle "ervandew/supertab"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "vim-ruby/vim-ruby"
Bundle "derekwyatt/vim-scala"
Bundle "szw/vim-g"
Bundle "radenling/vim-dispatch-neovim"
Bundle "elmcast/elm-vim"
Bundle "rust-lang/rust.vim"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "kana/vim-textobj-user"
Bundle 'editorconfig/editorconfig-vim'
Bundle 'ngmy/vim-rubocop'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'chrisbra/Colorizer'

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

Bundle "tpope/vim-fugitive"
autocmd BufReadPost fugitive://* set bufhidden=delete " Delete fugitive buffers

Bundle 'Raimondi/delimitMate'
let g:delimitMate_expand_space = 1

Bundle "thoughtbot/vim-rspec"
let g:rspec_command = "Dispatch bundle exec rspec {spec} -f progress"


Bundle "mattn/gist-vim"
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'

Bundle "nathanaelkane/vim-indent-guides"
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

Bundle 'w0rp/ale'
let g:ale_fixers = {
\   'ruby': [
\       'rubocop'
\   ],
\}


Bundle 'FooSoft/vim-argwrap'
let g:argwrap_padded_braces = '{'
nnoremap <silent> <leader>w :ArgWrap<CR>

call vundle#end()
