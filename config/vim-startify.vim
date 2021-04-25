" Settings

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_lists = [
		\ { 'type': 'files', 'header': ['   Files'] },
		\ { 'type': 'dir', 'header': ['   Current Directory ' . getcwd()] },
		\ { 'type': 'sessions', 'header': ['   Sessions'] },
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']}
	\ ]
