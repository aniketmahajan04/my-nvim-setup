-- Ensure Neovim sees Yazi in ~/.cargo/bin
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

-- Yazy cli(ya)
vim.env.PATH = vim.env.PATH .. ":/home/sendo/.cargo/bin"

local utils = require("utils")

-- Complete string.buffer polyfill for Neovim LSP compatibility
-- local ok, _ = pcall(require, "string.buffer")
-- if not ok then
-- 	local buffer_mt = {
-- 		__index = {
-- 			put = function(self, ...)
-- 				for i = 1, select("#", ...) do
-- 					local val = select(i, ...)
-- 					table.insert(self, tostring(val))
-- 				end
-- 				return self
-- 			end,
-- 			putf = function(self, fmt, ...)
-- 				table.insert(self, string.format(fmt, ...))
-- 				return self
-- 			end,
-- 			get = function(self)
-- 				return table.concat(self)
-- 			end,
-- 			tostring = function(self)
-- 				return table.concat(self)
-- 			end,
-- 			reset = function(self)
-- 				for i = 1, #self do
-- 					self[i] = nil
-- 				end
-- 				return self
-- 			end,
-- 			skip = function(self)
-- 				return self
-- 			end,
-- 			set = function(self, str)
-- 				self:reset()
-- 				table.insert(self, tostring(str))
-- 				return self
-- 			end,
-- 		},
-- 		__tostring = function(self)
-- 			return table.concat(self)
-- 		end,
-- 	}
--
-- 	package.loaded["string.buffer"] = {
-- 		new = function(size)
-- 			return setmetatable({}, buffer_mt)
-- 		end,
-- 	}
-- end

require("options")
require("keymaps")
require("custom_filetypes")
require("lazynvim")
require("cool_stuff")
require("mappings")
require("highlight")

utils.color_overrides.setup_colorscheme_overrides()

vim.cmd.colorscheme("custom")
-- vim.opt.laststatus = 0 -- hide status line

utils.fix_telescope_parens_win()
utils.dashboard.setup_dashboard_image_colors()

vim.opt.clipboard = "unnamedplus"
