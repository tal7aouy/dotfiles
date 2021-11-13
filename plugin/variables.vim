scriptencoding uft-8

" Variant of statusline from plugin/statusline.vim (can't comment inline
" with line continuation markers without Vim freaking out).
let g:DotQuickfixStatusline =
      \ '%7*'
      \ . '%{dot#statusline#lhs()}'
      \ . '%*'
      \ . '%4*'
      \ . ''
      \ . '\ '
      \ . '%*'
      \ . '%3*'
      \ . '%q'
      \ . '\ '
      \ . '%{get(w:,\"quickfix_title\",\"\")}'
      \ . '%*'
      \ . '%<'
      \ . '\ '
      \ . '%='
      \ . '\ '
      \ . ''
      \ . '%5*'
      \ . '%{dot#statusline#rhs()}'
      \ . '%*'

