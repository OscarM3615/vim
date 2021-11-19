nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create a map to add keys to
let g:which_key_map = {}

" Define a separator
let g:which_key_sep = '→'

set timeoutlen=300

let g:which_key_use_floating_win = 0

" Override default colours
highlight default link WhichKey Operator
highlight default link WhichKeySeparator DiffAdded
highlight default link WhichKeyGroup Identifier
highlight default link WhichKeyDesc Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [':Commentary', 'toggle comment']
let g:which_key_map['b'] = [':NERDTreeToggle', 'toggle NERDTree']
let g:which_key_map['C'] = [':source $MYVIMRC', 'reload config']
let g:which_key_map['d'] = ['"_d', 'delete']
let g:which_key_map['l'] = [':FloatermNew lazygit', 'lazygit']
let g:which_key_map['p'] = ['"+p', 'paste from clipboard']
let g:which_key_map['S'] = [':SSave', 'save session']
let g:which_key_map['t'] = [':TagbarToggle', 'toggle Tagbar']
let g:which_key_map['w'] = [':set wrap!', 'toggle wrap']
let g:which_key_map['y'] = ['"+y', 'yank to clipboard']

let g:which_key_map.c = {
  \ 'name': '+code',
  \ 'a': ['<Plug>(coc-codeaction)', 'code action'],
  \ 'd': ['<Plug>(coc-definition)', 'go to definition'],
  \ 'i': ['<Plug>(coc-implementation)', 'go to implementation'],
  \ 'r': ['<Plug>(coc-rename)', 'rename symbol'],
\ }

let g:which_key_map.f = {
  \ 'name': '+file',
  \ 'f': [':CocCommand prettier.formatFile', 'format file'],
  \ 'i': ["gg=G''", 'fix indentation'],
\ }

let g:which_key_map.g = {
  \ 'name': '+git',
  \ 'c': [':Git commit', 'commit'],
  \ 'h': [':diffget //2', 'get left side'],
  \ 'j': [':Git pull', 'pull'],
  \ 'k': [':Git push', 'push'],
  \ 'l': [':diffget //3', 'get right side'],
  \ 's': [':G', 'status'],
\ }

let g:which_key_map.s = {
  \ 'name': '+split',
  \ 'h': [':sp', 'split horizontal'],
  \ 't': [':tabedit', 'new tab'],
  \ 'v': [':vsp', 'split vertical'],
\ }

nnoremap <leader>xb :!bibtex $(echo % \| sed 's/.tex$//')<CR>
nnoremap <leader>xc :!pdflatex %<CR>
nnoremap <leader>xp :!mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>

let g:which_key_map.x = {
  \ 'name': '+latex',
  \ 'b': 'bind references',
  \ 'c': 'compile pdf',
  \ 'p': 'preview pdf',
\ }

" Register which key map
call which_key#register('<Space>', 'g:which_key_map')
