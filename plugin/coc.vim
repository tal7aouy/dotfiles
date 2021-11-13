let g:coc_user_config = {
        \ "angular.trace.server": v:true,
        \ "suggest.enablePreview": v:true,
				\ "prettier.disableSuccessMessage": v:true,
        \ "suggest.maxPreviewWidth": 100,
        \ "diagnostic.checkCurrentLine": v:true,
        \ "diagnostic.maxWindowHeight": 20,
        \ "diagnostic.errorSign": "✖",
        \ "diagnostic.warningSign": "⚠",
        \ "diagnostic.infoSign": "●",
        \ "diagnostic.hintSign": "○",
        \ "coc.preferences.formatOnSaveFiletypes": ["typescript", "javascript", "javascript.jsx", "typescript.tsx", "typescriptreact", "javascriptreact", "elm", "html", "less"],
        \ 'eslint.filetypes': ["javascript", "javascriptreact", "typescript", "typescriptreact"],
        \ 'languageserver': {
        \ "elmLS": {
        \     "command": "elm-language-server",
        \     "filetypes": ["elm"],
        \     "rootPatterns": ["elm.json"],
        \     "trace.server": "verbose",
        \     "initializationOptions": {
        \       "elmPath": "elm",
        \       "elmFormatPath": "elm-format",
        \       "elmTestPath": "elm-test",
        \       "elmAnalyseTrigger": "change"
        \     }
        \   }
        \ }
        \ }

" let g:coc_global_extensions = [
"       \ 'coc-tag',
"       \ 'coc-css',
"       \ 'coc-html',
"       \ 'coc-json',
"       \ 'coc-prettier',
"       \ 'coc-vimlsp',
"       \ 'coc-pairs',
"       \ 'coc-eslint',
"       \ 'coc-tsserver',
"       \ 'coc-angular'
"       \ ]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Plug>(coc-fix-current)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

