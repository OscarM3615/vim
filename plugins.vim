" Automatically install vim-plug if not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
	silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-accent'
Plug 'ap/vim-css-color'
Plug 'catppuccin/vim', {'as':'catppuccin'}
Plug 'editorconfig/editorconfig-vim'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'junegunn/limelight.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
