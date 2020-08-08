if exists('g:loaded_convert_git_url')
  finish
endif
let g:loaded_convert_git_url = 1

command! ConvertGitUrl call convert_git_url#convert()<CR>
