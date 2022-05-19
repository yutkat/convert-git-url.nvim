if vim.g.loaded_convert_git_url ~= nil then
	return
end
vim.g.loaded_convert_git_url = 1

vim.api.nvim_create_user_command("ConvertGitUrl", function()
	local save_pos = vim.fn.getpos(".")
	local cur = vim.fn.expand("<cWORD>")
	if string.match(cur, "^git@") then
		vim.cmd([[s#git@\(.\{-}\).com:#https://\1.com/#]])
	elseif string.match(cur, "^http") then
		vim.cmd([[s#https://\(.\{-}\).com/#git@\1.com:#]])
	end
	vim.fn.setpos(".", save_pos)
end, { force = true })
