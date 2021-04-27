" Mappings

nnoremap <silent> <F1> :FloatermToggle<CR>
tnoremap <silent> <F1> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <F2> :FloatermPrev<CR>
tnoremap <silent> <F2> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F3> :FloatermNext<CR>
tnoremap <silent> <F3> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F4> :FloatermNew<CR>
tnoremap <silent> <F4> <C-\><C-n>:FloatermNew<CR>

nnoremap <silent> <leader>lg :FloatermNew lazygit<CR>

" Settings

let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_title = '[$1/$2] Terminal'
let g:floaterm_autoclose = 1
