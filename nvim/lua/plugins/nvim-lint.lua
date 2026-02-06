-- 句法检查插件
return {
	{
		"mfussenegger/nvim-lint",
		"rshkarin/mason-nvim-lint",
		event = { "BufReadPost", "BufWritePost", "InsertLeave" },
		opts = {
			-- 安装你想要的Linter
			ensure_installed = {
				"bacon",
				"luacheck",
				"vale",
				"bandit",
				"cpplint",
				"cmakelang",
				"shellcheck",
				"checkstyle",
				"yamllint",
			},
		},
		config = function()
			require("lint").linters_by_ft = {
				-- 按文件类型配置检查器
				python = { "bandit" },
				lua = { "luacheck" },
				java = { "checkstyle" },
				cmake = { "cmakelang" },
				cpp = { "cpplint" },
				rust = { "bacon" },
				json = { "jsonlint" },
				sh = { "shellcheck" },
				bash = { "shellcheck" },
				zsh = { "shellcheck" },
				markdown = { "vale" },
				tex = { "vale" },
				vimScript = { "vint" },
				yaml = { "yamllint" },
			}

			-- 自动命令：保存时检查
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
