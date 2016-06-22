if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

let g:airline#extensions#whitespace#enable = 1
let g:airline#extensions#whitespace#checks = [ 'trailing' ]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
