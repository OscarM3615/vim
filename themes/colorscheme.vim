if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif

	if (has("termguicolors"))
		set termguicolors
	endif
endif

colorscheme catppuccin_macchiato

hi Normal guibg=NONE ctermbg=NONE
