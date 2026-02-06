-- 格式化插件formatters
return {
	"stevearc/conform.nvim",
	lazy = true,
	event = {
		"BufReadPost",
		"BufNewFile",
		"InsertLeave",
		"TextChanged",
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			rust = {
				"rustfmt",
				lsp_format = "fallback",
			},
			cpp = { "clang-format", format_on_save = true },
			hpp = { "clang-format", format_on_save = true },
			cc = { "clang-format", format_on_save = true },
			h = { "clang-format", format_on_save = true },
			cxx = { "clang-format", format_on_save = true },
			tpp = { "clang-format" },
			json = { "clang-format" },
			tex = { "tex-fmt" },
			bib = { "tex-fmt" },
			c = { "clang-format" },
			["cmake.txt"] = { "gersemi" },
			["cmake.in"] = { "gersemi" },
			cmake = { "gersemi" },
			yaml = { "yamlfmt" },
			yml = { "yamlfmt" },
			bash = { "beautysh" },
			sh = { "beautysh" },
			zsh = { "beautysh" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
