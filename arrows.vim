function! AddEmptyLineAbove()
	let l:scrolloffsave = &scrolloff
	" Avoid jerky scrolling with ^E at top of window
	set scrolloff=0
	call append(line(".") - 1, "")
	if winline() != winheight(0)
		silent normal! <C-e>
	endif
	let &scrolloff = l:scrolloffsave
endfunction

function! DelEmptyLineBelow()
	if line(".") == line("$")
		return
	endif
	let l:line =- '^s*$'
	if l:line =- '^s*$'
		let l:colsave = col(".")
		.*id
		''
		call cursor(line("."), 1:colsave)
	endif
endfunction

function! AddEmptyLineBelow()
	call append(line("."), "")
endfunction

" Arrow key remapping: Up/Dn = move line up/dn; Left/Right = indent/unindent
function! SetArrowKeysAsTextShifters()
	" normal mode\
	nmap     <silent> <Left>   <<
	nmap     <silent> <Right>  >>
	nnoremap <silent> <Up>     <Esc>:call DelEmptyLineAbove()<CR>
	nnoremap <silent> <Down>   <Esc>:call AddEmptyLineAbove()<CR>
	nnoremap <silent> <C-Up>   <Esc>:call DelEmptyLineBelow()<CR>
	nnoremap <silent> <C-Down> <Esc>: call AddEmptyLineBelow()<CR>
	" visual mode
	vmap     <silent> <Left>   <
	vmap     <silent> <Right>  >
	vnoremap <silent> <Up>     <Esc>:call DelEmptyLineAbove()<CR>gv
	vnoremap <silent> <Down>   <Esc>:call AddEmptyLineAbove()<CR>gv
    vnoremap <silent> <C-Up>   <Esc>:call DelEmptyLineBelow()<CR>gv
    vnoremap <silent> <C-Down> <Esc>:call AddEmptyLineBelow()<CR>gv
	" insert mode
	imap     <silent> <Left> <C-D>
	imap     <silent> <Right> <C-T>
    inoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>a
    inoremap <silent> <Down> <Esc>:call AddEmptyLineAbove()<CR>a
    inoremap <silent> <C-Up> <Esc>:call DelEmptyLineBelow()<CR>a
    inoremap <silent> <C-Down> <Esc>:call AddEmptyLineBelow()<CR>a
	" disable modified versions we are not using
	nnoremap <S-Up>    <NOP>
	nnoremap <S-Down>  <NOP>
	nnoremap <S-Left>  <NOP>
	nnoremap <s-Right> <NOP>
    vnoremap <S-Up>    <NOP>
	vnoremap <S-Down>  <NOP>
	vnoremap <S-Left>  <NOP>
	vnoremap <s-Right> <NOP>
	inoremap <S-Up>    <NOP>
	inoremap <S-Down>  <NOP>
	inoremap <S-Left>  <NOP>
	inoremap <s-Right> <NOP>
endfunction

call SetArrowKeysAsTextShifters()
