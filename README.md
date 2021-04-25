# Vim Settings Directory

## Prerequisites

- Git (required by fugitive)
- NPM (required by vim-plug to install plugins)
- Yarn (required by coc to install extensions)
- Nerd font (otherwise, icons won't display correctly)
- Ctags (required by tagbar)

## Installation

To use this config, clone the repository:
`git clone https://github.com/OscarM3615/vim ~/.vim`

Then, run `vim` in the terminal, plugins will be installed automatically.

## Directory structure

- `autoload`: vim-plug executable.
- `plugged`: Installed plugins.
- `config`: Plugin config files to set up each one separately.
- `coc-settings.json`: vim-coc settings.
- `vimrc`: General settings and sources the `config/*.vim` files.
