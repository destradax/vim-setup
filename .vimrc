" options
syntax on
filetype plugin on
set mouse=a
set autoindent
set tabstop=2
set shiftwidth=2
set noswapfile
set number
set nowrap

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
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>

" reload .vimrc automatically
if has("autocmd")
	autocmd BufWritePost .vimrc source $MYVIMRC
endif

" easy mappings
let mapleader=","
" Open new file in vertical split
nmap <leader>o :Vexplore<CR> 
" Open new file in horizontal split
nmap <leader>h :Hexplore<CR> 
