" Traverse errors and warnings
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>ac <Plug>(coc-codeaction)

" Go to definition/implementation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Apply format to file
nnoremap <leader>ff :CocCommand prettier.formatFile<CR>

" Fix merge conflicts in diff mode
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

" Git status/commit
nmap <leader>gs :G<CR>
nmap <leader>gc :Git commit<CR>

" Git push/pull
nmap <leader>gk :Git push<CR>
nmap <leader>gj :Git pull<CR>

" Toggle comments
nnoremap <silent> <C-_> :Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>

" Toggle NerdTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Toggle TagBar
nmap <silent> <F8> :TagbarToggle<CR>

" Toggle terminal
nnoremap <silent> <F1> :FloatermToggle<CR>
tnoremap <silent> <F1> <C-\><C-n>:FloatermToggle<CR>

" Previous/next terminal
nnoremap <silent> <F2> :FloatermPrev<CR>
tnoremap <silent> <F2> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F3> :FloatermNext<CR>
tnoremap <silent> <F3> <C-\><C-n>:FloatermNext<CR>

" New terminal
nnoremap <silent> <F4> :FloatermNew<CR>
tnoremap <silent> <F4> <C-\><C-n>:FloatermNew<CR>

" Open applications in terminal
nnoremap <silent> <leader>lg :FloatermNew lazygit<CR>

" Save current session
nnoremap <leader>ss :SSave<CR>

" Start a presentation in markdown files.
autocmd FileType markdown nnoremap <silent> <F5> :PresentingStart<CR>
