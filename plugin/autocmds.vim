" save all files on focus lost and update on disk changes
augroup auto_save
  autocmd!
  " Frequently save automatically
  autocmd BufLeave,FocusLost * silent! wa
  " Check for file changes
  autocmd BufEnter,BufWinEnter,CursorHold,FocusGained * silent! checktime
augroup END

" Resize all buffers on vim resize
augroup on_vim_resized
  autocmd!
  autocmd VimResized * wincmd =
augroup END

" Spellchecking
autocmd BufRead,BufNewFile *.md setlocal spell

" Focus statusline
autocmd BufEnter,FocusGained,VimEnter,WinEnter * call dot#focus#focus_statusline()
autocmd FocusLost,WinLeave * call dot#focus#blur_statusline()
