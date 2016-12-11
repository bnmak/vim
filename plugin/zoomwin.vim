" toggles zoom status of current window

function! ToggleMaxWins()
	if exists('g:windowMax')
		au! maxCurrWin
		wincmd =
		unlet g:windowMax
	else
		augroup maxCurrWin
			" au BuffEnter * wincmd _ | wincmd |
			"
			" only max it vertically
			au WinEnter * wincmd _
		augroup END
		do maxCurrWin WinEnter
		let g:windowMax=1
	endif
endfunction
nnoremap <Leader>max :call ToggleMaxWins()<CR>
