scriptencoding utf-8

if has('statusline')
  " Switch to User7 highlight group
  set statusline=%7*
  set statusline+=%{dot#statusline#lhs()}
  " Reset highlight group.
  set statusline+=%*
  " Switch to User4 highlight group (Powerline arrow).
  set statusline+=%4*
  " Powerline arrow.
  set statusline+=
  " Reset highlight group.
  set statusline+=%*
  " Space.
  set statusline+=\  "comment to store space
  " Truncation point, if not enough width available.
  set statusline+=%<
  " Parent directory and filename
  set statusline+=%{expand('%:p:h:t')}/%t
  " Reset highlight group.
  set statusline+=%*
  " Split point for left and right groups
  set statusline+=%=
  " Space.
  set statusline+=\  "comment to store space
  " set statusline+=               " Powerline arrow.
  " set statusline+=%5*             " Switch to User5 highlight group.
  set statusline+=%y
  set statusline+=\  "comment to store space
endif

if has('autocmd')
  autocmd BufWinEnter,BufWritePost,FileWritePost,TextChanged,TextChangedI,WinEnter * call dot#statusline#highlight_modified()
endif


