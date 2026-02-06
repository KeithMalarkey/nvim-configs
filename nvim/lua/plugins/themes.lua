-- 主题设置
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = { flavour = "mocha", transparent_background = true },
	},
	{
		"ellisonleao/gruvbox.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = true,
		opts = { transparent_mode = true },
	},
}
