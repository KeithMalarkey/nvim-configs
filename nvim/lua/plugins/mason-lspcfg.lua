-- 语言服务器
return {
	"mason-org/mason-lspconfig.nvim",
	event = "BufEnter",
	opts = {
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"clangd",
			"pyright",
			"zls",
			"neocmake",
			"jsonls",
			"yamlls",
			"ltex",
			"jdtls",
		},
		automatic_enable = false,
	},
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
}
