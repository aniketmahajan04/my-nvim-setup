-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = { "echasnovski/mini.icons" },
-- 	config = function()
-- 		require("lualine").setup({
-- 			options = {
-- 				icons_enabled = false,
-- 				theme = "auto",
-- 				component_separators = "",
-- 				section_separators = "",
-- 				globalstatus = true,
-- 			},
--
-- 			-- sections = {},
-- 			-- inactive_sections = {},
--
-- 			sections = {
-- 				lualine_a = { "mode" },
-- 				lualine_b = { "branch" },
-- 				lualine_c = { "filename" },
-- 				lualine_x = {
-- 					function()
-- 						local encoding = vim.o.fileencoding
-- 						if encoding == "" then
-- 							return vim.bo.fileformat .. " :: " .. vim.bo.filetype
-- 						else
-- 							return encoding .. " :: " .. vim.bo.fileformat .. " :: " .. vim.bo.filetype
-- 						end
-- 					end,
-- 				},
-- 				lualine_y = { "progress" },
-- 				lualine_z = { "location" },
-- 			},
-- 		})
-- 	end,
-- }


return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local function clock()
      return os.date("  %H:%M")
    end

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
        disabled_filetypes = { "dashboard", "lazy", "neo-tree" },
      },

      sections = {
        lualine_a = {
          { "mode", icon = "" },
        },
        lualine_b = {
          { "branch", icon = "" },
        },
        lualine_c = {
          {
            "filename",
            path = 1,
            symbols = { modified = " ●", readonly = " " },
          },

          -- ⭐ Diagnostics Section Added
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = "󰌵 ",
            },
            colored = true,
            always_visible = false,
          },
        },

        lualine_x = {
          { "filetype", icon_only = true },
          {
            function()
              local enc = vim.o.fileencoding ~= "" and vim.o.fileencoding or "none"
              return " " .. enc
            end,
          },
          { "filesize" },
        },

        lualine_y = {
          { "progress" },
          { clock },
        },

        lualine_z = {
          { "location" },
        },
      },
    })
  end,
}
