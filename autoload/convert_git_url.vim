function! convert_git_url#convert() abort
  let l:cur = expand("<cWORD>")
  if match(l:cur, '^git@') !=# -1
    echo l:cur
    s#git@\(.\{-}\).com:#https://\1.com/
  elseif match(l:cur, '^http') !=# -1
    echo l:cur
    s#https://\(.\{-}\).com/#git@\1.com:
  endif
  call setpos('.', getpos("''"))
endfunction

