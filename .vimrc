"options
syntax on
filetype plugin on
set mouse=a
set autoindent
set tabstop=2
set shiftwidth=2
set noswapfile

"window movement
map <A-Left> <C-w>h
map <A-Right> <C-w>l
map <A-Up> <C-w>k
map <A-Down> <C-w>j
imap <A-Left> <Esc><C-w>h
imap <A-Right> <Esc><C-w>l
imap <A-Up> <Esc><C-w>k
imap <A-Down> <Esc><C-w>j

"utils
map <F2> :NERDTreeToggle<CR>
map <F3> :buffers<CR>:buffer<Space>
map <F4> :sh<CR>

"surround
vnoremap ' <Esc>`<i'<Esc>`>a'<Esc>
vnoremap " <Esc>`<i"<Esc>`>a"<Esc>
vnoremap ( <Esc>`<i(<Esc>`>a)<Esc>
vnoremap { <Esc>`<i{<Esc>`>a}<Esc>
vnoremap [ <Esc>`<i[<Esc>`>a]<Esc>

"edition
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>

"easy comments"
noremap <C-c><C-c> :s/^/<C-R>=strpart(&commentstring, 0, 1)<CR> /g<CR>
noremap <C-c><C-e> :s/^<C-R>=strpart(&commentstring, 0, 1)<CR> //g<CR>
