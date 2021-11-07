set t_Co=256 " enable 256 colour mode
set tabstop=2 " set tab size to 2
set shiftwidth=2 " tab size to 2 for autoindent
set noexpandtab " use tabs instead of spaces
set autoindent " enable autoindent
set termguicolors " fix colour display
set colorcolumn=80 " show ruler at column 80
set encoding=utf-8 " always open with encoding utf-8
set endofline " always add a blank line to the end of file
set number " show line numbers
set cursorline " highlight the current line
set completeopt=menuone,longest " always show the autocomplete dialog
set shortmess+=c " hide completion messages
set splitbelow " always split a pane to the bottom
set splitright " always split a pane to the right
set nowrap " disable word wrap
set linebreak " dont split words when word wrap is on
set hidden " TextEdit might fail if not set
set nobackup " don't keep the backup file
set nowritebackup " don't create a backup file
set noundofile " avoid creating *.un~ files
set showtabline=2 " always show buffer tabs
set noshowmode " hide the mode messages
set updatetime=300 " reduce the update time
set signcolumn=number " show diagnostics in number column
set mouse=a " allow mouse interaction

" File-type exclusive config
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType gitcommit setlocal colorcolumn=50
autocmd FileType markdown setlocal wrap textwidth=80 expandtab
autocmd FileType tex setlocal wrap

let mapleader = ' '
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>y "+y
xnoremap <leader>y "+y
nnoremap <leader>p "+p

" Try to use IBeam cursor.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[6 q"
let &t_EI = "\<Esc>[6 q"
