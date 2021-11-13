
" Space + s saves the file
nmap <Leader>s :write<Enter>

" Space + r redraw vim
nmap <Leader>r :redraw!<Enter>

" Copy the relative path of the current file to the clipboard
nmap <Leader>cf :silent !echo -n % \| pbcopy<Enter>

" Move normally between wrapped lines
nmap j gj
nmap k gk

" Move fast
" :nmap K 7k
" :nmap J 7j

" Move to first symbol on the line
nnoremap H ^

" Move to last symbol of the line
nnoremap L $

" Quick jumping between splits
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" vv - Makes vertical split
map vv <C-W>v
" ss - Makes horizontal split
map ss <C-W>s
" Shift + q - Quit
map Q  <C-W>q

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Format JSON
command! FormatJSON %!python -m json.tool

" Indenting in visual mode (tab/shift+tab)
"
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Move to the end of yanked text after yank and paste
nnoremap p p`]
vnoremap y y`]
vnoremap p p`]

" Move selected lines down
vnoremap J :m '>+1<CR>gv=gv
" Move selected lines up
vnoremap K :m '<-2<CR>gv=gv

" Space + o to focus buffer between others
nnoremap <Leader>o :only<CR>

" Space + Space to clean search highlight
nmap <silent> <Leader>h :noh<CR>

" Fixes pasting after visual selection.
xnoremap p "_dP

" Switch to last file
nnoremap <Leader><Leader> <c-^>
