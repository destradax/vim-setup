if has("gui_running")
	language messages en 
	set guifont=Consolas:h9:cANSI
	set langmenu=en_US.UTF-8
	set guioptions-=T
	
	" easy copy-paste
	vnoremap <C-c> "+y
	inoremap <C-v> <Esc>"+pa
endif

" options
syntax on
colorscheme desert
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
set smartcase
set incsearch

" window movement
noremap <C-Left> <C-w>h
noremap <C-Right> <C-w>l
noremap <C-Up> <C-w>k
noremap <C-Down> <C-w>j
inoremap <C-Left> <Esc><C-w>h
inoremap <C-Right> <Esc><C-w>l
inoremap <C-Up> <Esc><C-w>k
inoremap <C-Down> <Esc><C-w>j

" move lines
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
inoremap <A-Up> <Esc>:m .-2<CR>==i
inoremap <A-Down> <Esc>:m .+1<CR>==i
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

" utils
noremap <F3> :buffers<CR>:buffer<Space>
noremap <F4> :sh<CR>

" run current file
nnoremap <F5> :!@%<CR>

" easy find and open file (use <Tab> to cycle)
noremap <C-c><C-f> :e **/
inoremap <C-c><C-f> <Esc>:e **/

" tab management
noremap <leader>t :tabedit .<cr>
noremap <leader>w :tabclose<cr>

" surround
vnoremap ' <Esc>`<i'<Esc>`>a'<Esc>
vnoremap " <Esc>`<i"<Esc>`>a"<Esc>
vnoremap ( <Esc>`<i(<Esc>`>a)<Esc>
vnoremap { <Esc>`<i{<Esc>`>a}<Esc>
vnoremap [ <Esc>`<i[<Esc>`>a]<Esc>

" auto-closing characters
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap ( ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap { {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap [ []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap < <><Left>
inoremap <expr> >  strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

" autocomplete
inoremap <C-Space> <C-x><C-o>

if has("autocmd")
	autocmd BufNewFile,BufRead *.md set ft=markdown
	autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
endif

" easy mappings
let mapleader=","

" Open new file in vertical split
nmap <leader>o :Vexplore! .<CR>
" Open new file in horizontal split
nmap <leader>h :Hexplore .<CR>

" Edit and source .vimrc
nmap <leader>ev :edit $MYVIMRC<CR>
nmap <leader>sv :source $MYVIMRC<CR>

" Change buffers
nmap <leader>. :bnext<CR>
nmap <leader>, :bprevious<CR>
nmap <leader>- :bwipeout<CR>
