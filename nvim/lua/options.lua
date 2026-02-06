vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- 添加 '-' 词语, deep-mind算一个词更合理
vim.opt.iskeyword:append("-")
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number" -- 开启光标行高亮,只高亮行号

-- 在 init.lua 中添加这个函数
local function safe_swapfile_cleanup()
	-- 获取当前缓冲区的文件路径
	local filename = vim.fn.expand("%:p")
	if filename == "" then
		return
	end

	-- 获取 swapfile 路径
	local swapname = vim.fn.swapname(filename)

	-- 检查 swapfile 是否存在
	if vim.fn.filereadable(swapname) == 1 then
		local file_mtime = vim.fn.getftime(filename)
		local swap_mtime = vim.fn.getftime(swapname)

		-- 如果文件最后修改时间晚于 swapfile，安全删除 swapfile
		if file_mtime > 0 and swap_mtime > 0 and file_mtime > swap_mtime then
			vim.fn.delete(swapname)
			vim.notify("🔄 已自动删除旧的交换文件", vim.log.levels.INFO, { title = "Swapfile Cleanup" })
		end
	end
end

-- 设置自动命令
vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "*",
	callback = safe_swapfile_cleanup,
})

-- 配置 swapfile 行为
vim.opt.swapfile = true
vim.opt.shortmess:append("A") -- 不显示交换文件提示

-- 设置 swapfile 目录
local swap_dir = vim.fn.stdpath("data") .. "/swap"
if vim.fn.isdirectory(swap_dir) == 0 then
	vim.fn.mkdir(swap_dir, "p")
end
vim.opt.directory = swap_dir .. "//" -- 双斜杠确保唯一文件名

vim.o.modeline = false -- 禁用模式行,一旦执行模式行后果不可预测
