" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
	if exists('t:expl_buf_num')
		let expl_win_num = bufwinnr(t:expl_buf_num)
		if expl_win_num != -1
			let cur_win_nr = winnr()
			exec expl_win_num . 'wincmd w'
			close
			exec cur_win_nr . 'wincmd w'
			unlet t:expl_buf_num
		else
			unlet t:expl_buf_num
		endif
	else
		exec '1wincmd w'
		Vexplore
		let t:expl_buf_num = bufnr('%')
	endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>
