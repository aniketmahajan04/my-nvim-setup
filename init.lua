-- Ensure Neovim sees Yazi in ~/.cargo/bin
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

-- Yazy cli(ya)
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

vim.opt.laststatus = 0 -- hide status line
vim.opt.cmdheight = 1
vim.opt.clipboard = "unnamedplus"
vim.opt.showmode = false

local utils = require("utils")


require("options")
require("keymaps")
require("custom_filetypes")
require("lazynvim")
require("cool_stuff")
require("mappings")
require("plugins.terminal")

utils.color_overrides.setup_colorscheme_overrides()

-- vim.cmd.colorscheme("custom")
-- Force laststatus to 0 ONLY when in TMUX
utils.fix_telescope_parens_win()
utils.dashboard.setup_dashboard_image_colors()

vim.opt.winblend = 0
vim.opt.pumblend = 0

vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
