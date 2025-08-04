vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.opt.fixendofline = false
vim.opt.showmode = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.o.showcmd = false
vim.opt.cmdheight = 1
vim.opt.pumheight = 10
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.completeopt = "menuone,noselect"
vim.opt.signcolumn = "yes"
vim.opt.ruler = false
vim.opt.virtualedit = "block"
vim.opt.smarttab = true
vim.opt.breakindent = true

-- 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.lazyredraw = true

vim.cmd [[colorscheme lackluster-mint]]

-- PHP files have this disabled by default for whatever reason...
vim.cmd [[autocmd FileType php setlocal autoindent]]
