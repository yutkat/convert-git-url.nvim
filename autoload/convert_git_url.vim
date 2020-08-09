function! convert_git_url#convert() abort
  let l:_save_pos = getpos('.')
  let l:cur = expand("<cWORD>")
  if match(l:cur, '^git@') !=# -1
    s#git@\(.\{-}\).com:#https://\1.com/#
  elseif match(l:cur, '^http') !=# -1
    s#https://\(.\{-}\).com/#git@\1.com:#
  endif
  call setpos('.', l:_save_pos)
endfunction

