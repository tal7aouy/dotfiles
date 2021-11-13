let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'],
  \ }

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files!' s:find_git_root()

command! -bang -nargs=* ProjectRg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --glob "!yarn.lock*" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview({ 'dir': s:find_git_root() }),
  \   <bang>0)


" Ctrl + p for files search
nnoremap <C-p> :ProjectFiles<CR>

" Ctrl + b for buffers search
nnoremap <Leader>b :Buffers<CR>

" Search in files
nnoremap <Leader>/ :ProjectRg!<CR>
