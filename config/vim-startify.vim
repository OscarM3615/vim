" Settings

let g:startify_custom_header = ['  __     ___',
		\ '  \ \   / (_)_ __ ___',
		\ '   \ \ / /| | ''_ ` _ \',
		\ '    \ V / | | | | | | |',
		\ '     \_/  |_|_| |_| |_|'
	\]

let g:startify_files_number = 5

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_lists = [
		\ { 'type': 'dir', 'header': ['   Current Directory ' . getcwd()] },
		\ { 'type': 'files', 'header': ['   Files'] },
		\ { 'type': 'sessions', 'header': ['   Sessions'] },
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']}
	\ ]
