function dot#focus#blur_statusline() abort
  let l:blurred='\ ' " space
  let l:blurred.='\ ' " space
  let l:blurred.='%t' " filename
  let l:blurred.='%=' " split left/right halves (makes background cover whole)
  call s:update_statusline(l:blurred, 'blur')
endfunction


function dot#focus#focus_statusline() abort
	call s:update_statusline('', 'focus')
endfunction

function! s:update_statusline(statusline, action) abort
	if &ft ==# 'defx'
		return
	else
		execute 'setlocal statusline=' . a:statusline
	endif
endfunction
