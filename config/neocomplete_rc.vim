let g:neocomplete#enable_at_startup = 0
let g:neocomplete#enable_auto_delimiter = 1

" enable completion only for specific filetypes
augroup FTConfigs
	autocmd FileType zsh NeoCompleteEnable
	autocmd FileType vim NeoCompleteEnable
augroup END
