" remap leader
let mapleader=','
let g:mapleader=','

" disable arrow keys in normal mode
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" map cursor move in insert mode
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" move cursor easier
nmap <leader>e $
nmap <leader>a ^

" save faster
nmap <leader>w :w!<cr>

" use ctrl-a/ctrl-e to jump to beginning/end of line in insert mode
inoremap <C-a> <C-o>0
inoremap <C-e> <C-o>$

" Enter blank line above/below while in insert mode
nmap <F8> o<Esc>
nmap <F9> O<Esc>

" VimShell
noremap <silent> <Leader>vs :VimShellPop<CR>

" buffer-related
nmap <silent> <leader>bd :Bclose<cr>

" new empty buffer
nmap <leader>T :enew<cr>

" move to the next/previous buffer
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

" close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" list buffers
nmap <leader>bl :BufExplorerVerticalSplit<CR>

" NERDTree

nmap <silent> <leader>n :NERDTreeToggle<CR>
