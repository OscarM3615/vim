" Traverse errors and warnings
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Scroll coc floating windows
nnoremap <silent><nowait><expr> <PageUp> coc#float#has_scroll() ? coc#float#scroll(0) : "\<PageUp>"
nnoremap <silent><nowait><expr> <PageDown> coc#float#has_scroll() ? coc#float#scroll(1) : "\<PageDown>"

" Toggle comments
nnoremap <silent> <C-_> :Commentary<CR>
inoremap <silent> <C-_> <C-o>:Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>
