source ~/.config/nvim/vundle.vim
source ~/.config/nvim/theming.vim
source ~/.config/nvim/keybinds.vim

" change the mapleader from \ to ,
let mapleader=","

set nobackup
set autoindent
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite

set lazyredraw


filetype plugin indent on

set scrolloff=3

set statusline=%10f       " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=:%c       " Column number
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\         " Space
set statusline+=[%{fugitive#head(7)}]

set clipboard=unnamedplus
set backspace=indent,eol,start


" Syntax highlightning
syntax on

" Bundler
au BufNewFile,BufRead Gemfile set filetype=ruby

" Use Ag over Grep
set grepprg=ag\ --nogroup\ --nocolor

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Mouse support
set mouse=a

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Cucumber navigation commands
  " autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
  " autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.rs set filetype=rust
  autocmd BufRead,BufNewFile *.coffee set filetype=coffee
  autocmd BufRead,BufNewFile *.slim set filetype=slim

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Numbers
set relativenumber
set numberwidth=5

" Display current line in a different color
set cursorline

" Do not wrap and color column 80
set nowrap
set colorcolumn=80
autocmd FileType scala setlocal colorcolumn=120

" Highlighted find and replace
set inccommand=nosplit

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
