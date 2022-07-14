let g:startify_custom_header = [
		\ '  __     ___',
		\ '  \ \   / (_)_ __ ___',
		\ '   \ \ / /| | ''_ ` _ \',
		\ '    \ V / | | | | | | |',
		\ '     \_/  |_|_| |_| |_|'
	\]

let g:startify_files_number = 5
let g:startify_change_to_dir = 0

let g:startify_commands = [
		\ {'n': ['New note', 'enew | set ft=markdown']},
		\ {'u': ['Update plugins', 'PlugUpdate']},
		\ {'i': ['Install plugins', 'PlugInstall']},
		\ {'c': ['Clean plugins', 'PlugClean']},
		\ {'x': ['Update coc extensions', 'CocUpdate']}
	\ ]

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_lists = [
		\ { 'type': 'dir', 'header': ['   Current Directory ' . getcwd()] },
		\ { 'type': 'files', 'header': ['   Files'] },
		\ { 'type': 'commands', 'header': ['   Commands'] },
		\ { 'type': 'sessions', 'header': ['   Sessions'] },
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']}
	\ ]

autocmd VimEnter *
	\ if !argc()
		\ | Startify
		\ | NERDTree
		\ | wincmd w
	\ | endif
