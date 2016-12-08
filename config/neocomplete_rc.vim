let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_delimiter = 1

" enable completion only for specific filetypes
augroup FTConfigs
	autocmd FileType zsh NeoCompleteEnable
	autocmd FileType vim NeoCompleteEnable
augroup END

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ neocomplete#start_manual_complete()
function! s:check_back_space() "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
