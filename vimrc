set encoding=utf-8
set tabstop=2
set shiftwidth=2
set noexpandtab
set autoindent
set colorcolumn=80
set endofline
set number
set cursorline
set completeopt=noinsert,menuone
set shortmess+=c
set splitbelow
set splitright
set nowrap
set linebreak
set hidden
set nobackup
set nowritebackup
set noundofile
set showtabline=2
set noshowmode
set updatetime=300
set signcolumn=number
set mouse=a
set ttymouse=sgr
set ignorecase
set termguicolors

autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType gitcommit setlocal colorcolumn=50,80
autocmd FileType markdown setlocal wrap textwidth=80 expandtab
autocmd FileType tex,plaintex,bib setlocal textwidth=80

let mapleader = ' '

source ~/.vim/plugins.vim
source ~/.vim/coc-extensions.vim
source ~/.vim/keybindings.vim

" Plugin config
source ~/.vim/plugins/airline.vim
source ~/.vim/plugins/coc.vim
source ~/.vim/plugins/emmet.vim
source ~/.vim/plugins/limelight.vim
source ~/.vim/plugins/startify.vim
source ~/.vim/plugins/which-key.vim

colorscheme catppuccin_macchiato
