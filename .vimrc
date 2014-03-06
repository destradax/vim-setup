if has("gui_running")
	language messages en 
	set guifont=Consolas:h9:cANSI
	set langmenu=en_US.UTF-8
	set guioptions-=T
	colorscheme desert
	
	" easy copy-paste
	vnoremap <C-c> "+y
	inoremap <C-v> <Esc>"+pa
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
set smartcase
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

" move lines
nnoremap <C-Up> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
inoremap <C-Up> <Esc>:m .-2<CR>==i
inoremap <C-Down> <Esc>:m .+1<CR>==i
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

" utils
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :buffers<CR>:buffer<Space>
noremap <F4> :sh<CR>

" run current file
nnoremap <F5> :!@%<CR>

" easy find and open file (use <Tab> to cycle)
noremap <C-c><C-f> :e **/
inoremap <C-c><C-f> <Esc>:e **/

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
inoremap <expr> > strpart(getline('.'), col('.')-1, 1)

" autocomplete
inoremap <C-Space> <C-x><C-o>

if has("autocmd")
	autocmd BufNewFile,BufRead *.md set ft=markdown
	autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
endif

" easy mappings
let mapleader=","

" Open new file in vertical split
nmap <leader>o :Vexplore!<CR>
" Open new file in horizontal split
nmap <leader>h :Hexplore<CR>

" Edit and source .vimrc
nmap <leader>ev :edit $MYVIMRC<CR>
nmap <leader>sv :source $MYVIMRC<CR>

" Change buffers
nmap <leader>. :bnext<CR>
nmap <leader>, :bprevious<CR>
nmap <leader>- :bwipeout<CR>
