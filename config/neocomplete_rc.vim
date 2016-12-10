let g:neocomplete#enable_at_startup = 0
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_close_preview = 1

" enable completion only for specific filetypes
augroup FTConfigs
	autocmd FileType conf NeoCompleteEnable
	autocmd FileType config NeoCompleteEnable
	autocmd FileType gitcommit NeoCompleteEnable
	autocmd FileType html NeoCompleteEnable
	autocmd FileType javascript NeoCompleteEnable
	autocmd FileType markdown NeoCompleteEnable
	autocmd FileType perl NeoCompleteEnable
	autocmd FileType php NeoCompleteEnable
	autocmd FileType python NeoCompleteEnable
	autocmd FileType sh NeoCompleteEnable
	autocmd FileType tex NeoCompleteEnable
	autocmd FileType vim NeoCompleteEnable
	autocmd FileType yaml NeoCompleteEnable
	autocmd FileType zsh NeoCompleteEnable
augroup END

" carriage return cancels popup and inserts newline
inoremap <silent> <CR> <C-r>=neocomplete#smart_close_popup()<CR><CR>
" TAB completion.
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr> <BS>  neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr> <C-y> neocomplete#close_popup()
inoremap <expr> <C-e> neocomplete#cancel_popup()
