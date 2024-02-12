nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>y "+y
xnoremap <leader>y "+y
nnoremap <leader>p "+p

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent><nowait><expr> <PageUp> coc#float#has_scroll() ? coc#float#scroll(0) : "\<PageUp>"
nnoremap <silent><nowait><expr> <PageDown> coc#float#has_scroll() ? coc#float#scroll(1) : "\<PageDown>"

nnoremap <silent> <C-_> :Commentary<CR>
inoremap <silent> <C-_> <C-o>:Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>
