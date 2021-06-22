" Automatically install vim-plug if not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
	silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim' " onedark theme
Plug 'mhinz/vim-startify' " home page
Plug 'preservim/nerdtree' " files explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " git status flags on explorer
Plug 'ryanoasis/vim-devicons' " icons on explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " colours in explorer icons
Plug 'voldikss/vim-floaterm' " floating terminal
Plug 'preservim/tagbar' " code outline
Plug 'vim-airline/vim-airline' " enhance the bottom bar
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'mattn/emmet-vim' " emmet support
Plug 'editorconfig/editorconfig-vim' " check for .editorconfig files
Plug 'https://tpope.io/vim/fugitive.git' " git hints for airline
Plug 'sheerun/vim-polyglot' " multiple language support
Plug 'sotte/presenting.vim' " show markdown as slides
Plug 'vim-scripts/dbext.vim' " SQL support
Plug 'nicwest/vim-http' " use as REST client
Plug 'ap/vim-css-color'	" preview colours
Plug 'airblade/vim-accent' " support for accents
call plug#end()
