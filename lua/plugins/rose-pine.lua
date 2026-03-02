-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
	require("rose-pine").setup({
	variant = "auto",
	dark_variant = "main",
	dim_incative_windows = false,
	extend_background_behind_border = true,

	enable = {
	terminal = true,
	legacy_highlights = true,
	migration = true,
	},

	style ={
	    bolde = false,
		italic = true,
		panel = "surface",

		error = "love",
		hint = "iris",
		info = "foam",
		note = "pine",
		todo = "rose",
		warn = "gold",

		git_add = "foam",
		git_change = "rose",
		git_delete = "love",
		git_dirty = "rose",
		git_ignore = "muted",
		git_merge = "iris",
		git_rename = "pine",
		git_stage = "iris",
		git_text = "rose",
		git_untracked = "subtle",

		h1 = "iris",
		h2 = "foam",
		h3 = "rose",
		h4 = "gold",
		h5 = "pine",
		h6 = "foam",
	}
	})
		vim.cmd("colorscheme rose-pine")
     -- 👇 ADD THIS HERE
    vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { link = "CursorLine" })
    vim.api.nvim_set_hl(0, "BlinkCmpDoc", { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { link = "FloatBorder" })
	end
}
