if exists("g:loaded_commenter")
	finish
endif
let g:loaded_commenter = 1

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

function s:Comment()
	if exists("b:commentstr")
		silent execute 's/^/' . escape(b:commentstr, '/') . ' /g'
	endif
endfunction

function s:Uncomment()
	if exists("b:commentstr")
		silent! execute 's/^' . escape(b:commentstr, '/') . ' //g'
	endif
endfunction

noremap <silent> <C-c><C-c> :call <SID>Comment()<CR>
noremap <silent> <C-c><C-e> :call <SID>Uncomment()<CR>

autocmd BufRead,BufNewFile * :call <SID>CommenterInit()
