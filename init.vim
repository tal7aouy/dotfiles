let mapleader = "\<Space>"

call plug#begin('~/.config/nvim/plugged')

" colorscheme
Plug 'overcache/NeoSolarized'
" css3 syntax highlight
Plug 'hail2u/vim-css3-syntax'
Plug 'scrooloose/nerdtree'
" less syntax highlight
Plug 'groenewege/vim-less'
Plug 'ryanoasis/vim-devicons'
" Elixir syntax highlight
Plug 'elixir-editors/vim-elixir'

" Shakespeare (Yesod templating)
Plug 'pbrisbin/vim-syntax-shakespeare'

" file tree
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" commenting text
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" Syntax highlight for .tsx
Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }

" Syntax highlight for .ts
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" Syntax hightlight for .jsx
Plug 'mxw/vim-jsx'

" Syntax hightlight for .js
Plug 'pangloss/vim-javascript'

" Show indentation
Plug 'Yggdroot/indentLine'

" Highlink yank for a second
Plug 'machakann/vim-highlightedyank'

" Visual local history
Plug 'sjl/gundo.vim'

" Surround text with something
Plug 'tpope/vim-surround'

" Allow repeating of custom commands like surround
Plug 'tpope/vim-repeat'

" Typescript autocomplete
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

" Haskell highlighting
Plug 'neovimhaskell/haskell-vim'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Handlebars highlight
Plug 'mustache/vim-mustache-handlebars'

" Smart replace, abbreviations, convert case
Plug 'tpope/vim-abolish'

" Multifile replace
Plug 'wincent/ferret'

" Show list of merge conflicts
Plug 'wincent/vcs-jump'

" Functions for manipulating highlight groups
Plug 'wincent/pinnacle'

" Vim elm syntax
Plug 'andys8/vim-elm-syntax'
" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
