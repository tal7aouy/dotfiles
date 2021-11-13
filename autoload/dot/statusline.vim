scriptencoding utf-8

function! dot#statusline#highlight_modified() abort
  if &modified
		let l:fg="#aa4542"
		let l:bg="#504945"
  else
		let l:fg="#84A598"
		let l:bg="#504945"
  endif

  " Update StatusLine to use italics (used for filetype).
  let l:highlight=pinnacle#italicize('StatusLine')
  execute 'highlight User1 ' . l:highlight

  " Update MatchParen to use italics (used for blurred statuslines).
  let l:highlight=pinnacle#italicize('MatchParen')
  execute 'highlight User2 ' . l:highlight

  " StatusLine + bold (used for file names).
  let l:highlight=pinnacle#embolden('StatusLine')
  execute 'highlight User3 ' . l:highlight

  " Inverted Error styling, for left-hand side "Powerline" triangle.
  execute 'highlight User4 ' . pinnacle#highlight({'bg': l:bg, 'fg': l:fg})

  execute 'highlight User7 ' .
        \ pinnacle#highlight({
        \   'bg': l:fg,
        \   'fg': pinnacle#extract_fg('Normal'),
        \   'term': 'bold'
        \ })

  " Right-hand side section.
  execute 'highlight User5 ' .
        \ pinnacle#highlight({
        \   'bg': '#ebdbb2',
        \   'fg': '#000000',
        \   'term': 'bold'
        \ })

  " Right-hand side section + italic (used for %).
  execute 'highlight User6 ' .
        \ pinnacle#highlight({
        \   'bg': l:fg,
        \   'fg': l:bg,
        \   'term': 'bold,italic'
        \ })

  highlight clear StatusLineNC
  highlight! link StatusLineNC User1
endfunction

function! dot#statusline#lhs() abort
  let l:line=dot#statusline#gutterpadding()
  let l:line.=&modified ? '✘ ' : '  '
  return l:line
endfunction

function! dot#statusline#gutterpadding() abort
	let l:signcolumn=2
  let l:minwidth=2
  let l:gutterWidth=max([strlen(line('$')) + 1, &numberwidth, l:minwidth]) + l:signcolumn
  let l:padding=repeat(' ', l:gutterWidth - 1)
	echo l:padding
  return l:padding
endfunction
