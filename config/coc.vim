" Mappings

inoremap <silent> <C-@> <C-x><C-o>
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
	\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>ac <Plug>(coc-codeaction)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <leader>rn <Plug>(coc-rename)
imap <C-l> <Plug>(coc-snippets-expand)
nnoremap <leader>ff :CocCommand prettier.formatFile<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Settings

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

function! s:show_documentation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h'.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

hi! CocErrorSign guifg=#d1666a
hi! CocWarningSign guifg=#e5c07b
hi! CocInfoSign guifg=#e5c07b
