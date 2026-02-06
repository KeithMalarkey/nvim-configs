# 我的neonvim配置

##  Overview 👀
1. lazy.nvim实现插件管理
2. 空格键space和","分别作为map leader/local map leader
3. mason和相应cfgers实现lsp的安装/配置

## bias ❤️
1. 设置行号，不用相对行号;
2. ”-“连接词视为单个word;
3. tab缩进设置为4字符;
4. swapfile自动清理;

## plugins 🛰️
1. aerial——打开/关闭文件的outline
2. blink.cmp——自动补全
3. nvim-autopairs——符号自动匹配
4. conform——自动格式化
5. vimtex——latex编辑
6. lazygit——git版本管理
7. lualine/bufferline——status/buffer的显示
8. luasnip——snipper服务器
9. neo-tree——file explorer
10. toggleTerm——内置终端
11. nvim-lint——linter句法检查
12. mason.nvim, mason-lspconfig.nvim, nvim-lspconfig \
  ——lsp的代理器，安装及配置
13. themes(gruvbox/catppuccin)
14. Comment——注释插件
15. nvim-treesitter——语法分析
16. better-escape.nvim——"jj"/"jk"快速退出至normal
17. snacks.nvim——dashboard/notification/scroll等小组件
18. which-key——快捷键安全检查及提示
19. telescope.nvim——类似fzf+yazi的模糊查询插件
20. 其他小组件——neoscroll/tiny-inline-diagnostic/  \
noice/nvim-colorizer/markdown-preview/gitsigns等等

## notes 🔥
本人很懒，更新之后也不想update该readme，因此插件列表并不全面，以nvim/lua/plugins下的插件为准。

## TODO
如果需要该配置
+ 安装neovim，最好是最新的稳定版本，以arch linux为例
  + sudo pacman -S neovim或者AUR INSTALL：paru -S neovim
  + 检查安装which nvim/nvim --version，或pacman -Qi neovim检查本地安装信息
+ git clone下载该repo，当然一些外部依赖（比如git/clang/gcc等）请自行下载
