" Trim whitespaces
autocmd BufWritePre * call StripTrailingWhitespaces()

function! StripTrailingWhitespaces()
  if &modifiable
    let l:l = line('.')
    let l:c = col('.')
    call execute('%s/\s\+$//e')
    call histdel('/', -1)
    call cursor(l:l, l:c)
  endif
endfunction
