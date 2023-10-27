vim.cmd("autocmd!")

-- shell
vim.cmd([[set shell=/usr/bin/zsh]])

-- numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true -- ignore case when searching unless capital in search
vim.opt.wrap = true       -- disable wrap

-- scroll
vim.opt.scrolloff = 8

-- colorscheme
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.cmd([[colorscheme gruvbox]])
--vim.cmd([[colorscheme synthwave84]])

-- sign column for lsp
vim.cmd([[set signcolumn=yes]])

-- background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- highlights
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- highlight yanked text for 200ms
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
