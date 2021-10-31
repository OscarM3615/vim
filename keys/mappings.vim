" Traverse errors and warnings
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Toggle comments
nnoremap <silent> <C-_> :Commentary<CR>
inoremap <silent> <C-_> <C-o>:Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>

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

" Start a presentation in markdown files.
autocmd FileType markdown nnoremap <silent> <F5> :PresentingStart<CR>
