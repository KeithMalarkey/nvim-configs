-- 目录树
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						visible = true, -- 显示所有文件，包括隐藏的
						hide_dotfiles = false, -- 不隐藏 . 开头的文件
						hide_gitignored = false, -- 不隐藏 .gitignore 中的文件
						hide_by_name = {
							-- 这里可以指定要隐藏的文件名
							"node_modules",
							".",
							"..",
						},
						hide_by_pattern = {
							-- 使用模式匹配隐藏文件
							-- "*.meta",
						},
						always_show = {
							-- 总是显示这些文件，即使匹配了隐藏规则
							".gitignore",
						},
						never_show = {
							-- 从不显示这些文件
						},
					},
					window = { width = 25 },
				},
			})
		end,
		lazy = true,
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Uncomment whichever supported plugin(s) you use
			-- "nvim-tree/nvim-tree.lua",
			-- "nvim-neo-tree/neo-tree.nvim",
			-- "simonmclean/triptych.nvim"
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		name = "window-picker",
		event = "VeryLazy",
		version = "2.*",
		config = function()
			require("window-picker").setup()
		end,
	},
}
