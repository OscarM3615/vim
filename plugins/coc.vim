" Autocomplete
inoremap <silent> <C-@> <C-x><C-o>
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm()
	\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

function! s:show_documentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction

hi! CocErrorSign guifg=#ed8796
hi! CocWarningSign guifg=#eed49f
hi! CocInfoSign guifg=#eed49f
hi! CocHintSign guifg=#eed49f
