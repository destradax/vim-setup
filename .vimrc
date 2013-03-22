"options
syntax on
filetype plugin on
set mouse=a
set ai

"window movement
map <A-Left> <C-w>h
map <A-Right> <C-w>l
map <A-Up> <C-w>k
map <A-Down> <C-w>j

"utils
map <F2> :NERDTreeToggle<CR>
map <F3> :buffers<CR>:buffer<Space>
map <F4> :sh<CR>

"surround
vmap ' <Esc>`<i'<Esc>`>a'<Esc>
vmap " <Esc>`<i"<Esc>`>a"<Esc>
vmap ( <Esc>`<i(<Esc>`>a)<Esc>
vmap { <Esc>`<i{<Esc>`>a}<Esc>
vmap [ <Esc>`<i[<Esc>`>a]<Esc>

