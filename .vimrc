if has("gui_running")
	language messages en 
	set guifont=Consolas:h9:cANSI
	set langmenu=en_US.UTF-8
endif

" options
syntax on
filetype plugin on
set enc=utf-8
set mouse=a
set autoindent
set tabstop=2
set shiftwidth=2
set bs=2
set noswapfile
set number
set nowrap
set ignorecase
set incsearch

" window movement
noremap <A-Left> <C-w>h
noremap <A-Right> <C-w>l
noremap <A-Up> <C-w>k
noremap <A-Down> <C-w>j
inoremap <A-Left> <Esc><C-w>h
inoremap <A-Right> <Esc><C-w>l
inoremap <A-Up> <Esc><C-w>k
inoremap <A-Down> <Esc><C-w>j

" utils
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :buffers<CR>:buffer<Space>
noremap <F4> :sh<CR>

" easy find and open file (use <Tab> to cycle)
noremap <C-c><C-f> :e **/
inoremap <Esc><C-c><C-f> :e **/

" surround
vnoremap ' <Esc>`<i'<Esc>`>a'<Esc>
vnoremap " <Esc>`<i"<Esc>`>a"<Esc>
vnoremap ( <Esc>`<i(<Esc>`>a)<Esc>
vnoremap { <Esc>`<i{<Esc>`>a}<Esc>
vnoremap [ <Esc>`<i[<Esc>`>a]<Esc>

" edition
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

" reload .vimrc automatically
if has("autocmd")
	autocmd BufNewFile,BufRead *.md set ft=markdown
endif

" easy mappings
let mapleader=","
" Open new file in vertical split
nmap <leader>o :Vexplore<CR> 
" Open new file in horizontal split
nmap <leader>h :Hexplore<CR> 
" Edit and source .vimrc
nmap <leader>ev :edit $MYVIMRC<CR>
nmap <leader>sv :source $MYVIMRC<CR>
