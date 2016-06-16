let g:committia_hooks = {}

function! g:committia_hooks.edit_open(info)
	" Additional settings
	setlocal spell

	" If no commit message, start with insert mode
	if a:info.vcs ==# 'git' && getline(1) ==# ''
		startinsert
	end

	" Scroll the diff window in insert mode
	" Map <C-n> and <C-p>
	imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
	imap <buffer><C-p> <Plug><committia-scroll-diff-up-half)

endfunction
