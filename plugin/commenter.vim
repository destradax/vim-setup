" Vim global plugin for easy commenting of files
" Maintainer: Daniel Estrada <destradax@gmail.com>
" License: GNU GPL"

if exists("g:loaded_commenter")
	finish
endif
let g:loaded_commenter = 1

" checks the current filetype and sets te appropriate commentstr (for current
" buffer only)
function s:CommenterInit()
	let s:commenter_map = {
		\ 'c': '//',
		\ 'java': '//',
		\ 'sh': '#',
		\ 'ruby': '#',
		\ 'perl': '#',
		\ 'vim': '\"'
		\ }
	if has_key(s:commenter_map, &filetype)
		let b:commentstr = s:commenter_map[&filetype]
	endif
endfunction

" comments current line or selection
function s:Comment()
	if exists("b:commentstr")
		silent execute 's/^/' . escape(b:commentstr, '/') . ' /g'
	endif
endfunction

" uncomments current line or selection
function s:Uncomment()
	if exists("b:commentstr")
		silent! execute 's/^' . escape(b:commentstr, '/') . ' //g'
	endif
endfunction

" key mappings
noremap <silent> <C-c><C-c> :call <SID>Comment()<CR>
noremap <silent> <C-c><C-e> :call <SID>Uncomment()<CR>

" call CommenterInit when a buffer is read or a new one is created
autocmd BufRead,BufNewFile * :call <SID>CommenterInit()
