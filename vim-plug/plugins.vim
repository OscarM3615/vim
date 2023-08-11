" Automatically install vim-plug if not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
	silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'catppuccin/vim', {'as':'catppuccin'} " catppuccin theme
Plug 'mhinz/vim-startify' " home page
Plug 'preservim/nerdtree' " files explorer
Plug 'liuchengxu/vim-which-key' " keybindings manager
Plug 'Xuyuanp/nerdtree-git-plugin' " git status flags on explorer
Plug 'ryanoasis/vim-devicons' " icons on explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " colours in explorer icons
Plug 'voldikss/vim-floaterm' " floating terminal
Plug 'preservim/tagbar' " code outline
Plug 'vim-airline/vim-airline' " enhance the bottom bar
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'mattn/emmet-vim' " emmet support
Plug 'editorconfig/editorconfig-vim' " check for .editorconfig files
Plug 'https://tpope.io/vim/fugitive.git' " git hints for airline
Plug 'tpope/vim-commentary' " toggle comments
Plug 'sheerun/vim-polyglot' " multiple language support
Plug 'sotte/presenting.vim' " show markdown as slides
Plug 'junegunn/limelight.vim' " hyperfocus writing
Plug 'ap/vim-css-color'	" preview colours
Plug 'airblade/vim-accent' " support for accents
call plug#end()
