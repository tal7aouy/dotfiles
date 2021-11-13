" show line number
set number

" allow backspacing over everything in insert mode
" on some systems backspace or delete keys doesn't work
set backspace=indent,eol,start

" show the cursor position
set ruler

" show cursor line
" set cursorline

" Don't show extra info at the end of command line
set showcmd

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set lazyredraw

" Show relative numbers
set relativenumber

" ignore annoying swapfile messages
set shortmess+=A
" no splash screen
set shortmess+=I
" file-read message overwrites previous
set shortmess+=O
" truncate non-file messages in middle
set shortmess+=T
" don't echo "[w]"/"[written]" when writing
set shortmess+=W
" use abbreviations in messages eg. `[RO]` instead of `[readonly]`
set shortmess+=a
" don't give |ins-completion-menu| messages.
set shortmess+=c
" overwrite file-written messages
set shortmess+=o
" truncate file messages at start
set shortmess+=t

" always show signcolumns
set signcolumn=yes

" update vim after file update from outside
set autoread

" clipboard
set clipboard=unnamed

" no swap files
set noswapfile
set nobackup
set nowritebackup
set nowb

" persistent undo
" keep undo history across sessions, by storing in file.
" only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Indentation
set autoindent
" set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Always use spaces insted of tabs
set expandtab

" Open splits on the right and below
set splitbelow
set splitright

" autocomplete
" set completeopt+=preview
" set pumheight=15

" Better search
set hlsearch
set incsearch

" Ingore case in search
set ignorecase
set smartcase

" Use silver search for speed
" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

" Don't wrap lines
set wrap
" Wrap lines at convenient points
set linebreak
" Show line breaks
" set showbreak=↳
let &showbreak='↳ '


" Automatically :write before running commands
set autowrite

" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Reduce Command timeout for faster escape and O
set timeoutlen=1000 ttimeoutlen=0

" Jump to first non-blank character
set nostartofline

"Highlight matching bracket
set showmatch
" let g:matchparen_timeout = 2
" let g:matchparen_insert_timeout = 2

" Do not load netrw
" let g:loaded_netrwPlugin = 1

" Do not load matchit, use matchup plugin
" let g:loaded_matchit = 1

" let g:loaded_matchparen=1

" Don't show mode
set noshowmode

" Hightlight 80 symbols
" set colorcolumn=80

" Neosnippets conceal marker
set conceallevel=0

" Start scrolling when we'are 8 lines aways from borders
set scrolloff=8
set sidescrolloff=15
set sidescroll=5

" Live replace with additional buffer
set inccommand=nosplit

" Disable mouse scrolling
set mouse=a

" Always show column for errors on the left
set signcolumn=yes

" Disable cursor blinking
set gcr=a:blinkon0

" Set gui cursor
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Allows to use gui colors in terminal
set t_Co=256
set termguicolors

" Dark background
set background=dark

" Add the g flag to search/replace by default
set gdefault

" Escape key timeout
set timeoutlen=1000 ttimeoutlen=0

" Configure spellchecking
" setlocal spellfile=~/.vim/spell/en.utf-8.add
setlocal spelllang=en

" Set faster redrawing
set ttyfast

set shell=$SHELL

" Vimdiff should always be vertical
set diffopt+=vertical

" enable syntax highlight
syntax on

" make indentation based on filetype
filetype plugin indent on
