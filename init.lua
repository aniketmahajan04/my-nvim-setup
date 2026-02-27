-- Ensure Neovim sees Yazi in ~/.cargo/bin
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

-- Yazy cli(ya)
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

local utils = require("utils")


require("options")
require("keymaps")
require("custom_filetypes")
require("lazynvim")
require("cool_stuff")
require("mappings")

utils.color_overrides.setup_colorscheme_overrides()

-- vim.cmd.colorscheme("custom")
-- vim.opt.laststatus = 0 -- hide status line
-- Force laststatus to 0 ONLY when in TMUX
if vim.env.TMUX ~= nil then
    -- Create an autocommand group to force settings after plugins load
    local tmux_ui_group = vim.api.nvim_create_augroup("TmuxUIFix", { clear = true })

    vim.api.nvim_create_autocmd({ "VimEnter", "UIEnter" }, {
        group = tmux_ui_group,
        callback = function()
            vim.opt.laststatus = 0
            vim.opt.cmdheight = 0
            vim.opt.showmode = false
            -- If you use Lualine, this command kills it for the current session
            pcall(function() require('lualine').hide() end)
        end,
    })
end