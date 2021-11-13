  autocmd FileType defx call s:defx_settings()
  autocmd VimEnter * if isdirectory(expand(printf('#%s:p', expand('<abuf>'))))
    \ | call s:defx_open({ 'dir': expand(printf('#%s:p', expand('<abuf>'))) }) | endif

" Open filetree
nnoremap <silent><Leader>f :call <sid>defx_open({ 'split': v:true })<CR>


function! s:defx_open(...) abort
  let l:opts = get(a:, 1, {})
  let l:args = ''
  let l:is_vim_config_file = &filetype ==? 'vim'
  let l:is_opened = bufwinnr('defx') > 0 && !l:is_vim_config_file
  let l:is_file = has_key(l:opts, 'dir') && !isdirectory(l:opts.dir)

  if l:is_opened
    call execute('wincmd p')
  else
    call execute(printf('Defx %s -search=%s %s', l:args, expand('%:p'), expand('%:p:h')))
  endif
endfunction

function! s:defx_context_menu() abort
  let l:actions = ['new_file', 'new_directory', 'rename', 'copy', 'move', 'paste', 'remove']
  let l:selection = confirm('Action?', "&New file\nNew &Folder\n&Rename\n&Copy\n&Move\n&Paste\n&Delete")
  silent exe 'redraw'

  return feedkeys(defx#do_action(l:actions[l:selection - 1]))
endfunction

function! s:defx_settings() abort
  nnoremap <silent><buffer>m :call <sid>defx_context_menu()<CR>
  nnoremap <silent><buffer><expr> o defx#do_action('open')
  nnoremap <silent><buffer><expr> s defx#do_action('open', 'botright vsplit')
  nnoremap <silent><buffer><expr> R defx#do_action('redraw')
  nnoremap <silent><buffer><expr> u defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> H defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
endfunction
