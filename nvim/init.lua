-- mapleader setup
vim.g.mapleader = " "
vim.g.localmapleader = ","

require("keymap")
require("options")

-- lazy load
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- 默认启动主题设置
vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme catppuccin")
