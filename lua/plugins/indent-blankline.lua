-- File: ~/.config/nvim/lua/plugins/indent-blankline.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPost",
  main = "ibl",
  -- ... (keys section unchanged)
  opts = {
    enabled = true,
    -- CORRECTED: The list of filetypes must go under the 'ft' key
    exclude = {
      filetypes = {
        "help",
        "terminal",
        "starter",
        "nvim-tree",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "", -- Empty string is often used to exclude default buffer names
      }
    },
    -- ... (Add the rainbow highlights back to 'indent')
    indent = {
      char = "▏",
      highlight = {
        -- "IndentBlanklineIndent1",
        -- "IndentBlanklineIndent2",
        -- "IndentBlanklineIndent3",
        -- "IndentBlanklineIndent4",
        -- "IndentBlanklineIndent5",
        -- "IndentBlanklineIndent6",
        "IblIndent",
      },
    },
    -- ... (Add the scope highlight back to 'scope')
    scope = {
      enabled = true,
      -- show_start = false,
      -- show_end = false,
      highlight = {
        -- "RainbowRed",
        -- "RainbowYellow",
        -- "RainbowBlue",
        -- "RainbowOrange",
        -- "RainbowGreen",
        -- "RainbowViolet",
        -- "RainbowCyan",

        "IblScope"
      },
      include = {
        node_type = {
        -- Functions / Methods
        "function",
        "function_definition",
        "method",
        "method_definition",
          
        -- Conditionals
        "if_statement",
        "else_clause",
        "elseif_clause",

        -- Loops
        "for_statement",
        "while_statement",

        -- Blocks
        "block",
        "statement_block",
        "do_block",
        "compound_statement",

        -- Lua table
        "table_constructor",
        "table",

        -- Optional (not scopes but can be visually helpful)
        "assignment_statement",
        "variable_declaration",
        }
      }
    },
  },

  -- The config function is executed *after* the plugin is loaded
  config = function(_, opts)
    --1. Define highlights BEFORE registering hooks and setup
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#E06C75" })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#E5C07B" })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#98C379" })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#61AFEF" })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#C678DD" })
    -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#56B6C2" })
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4a4e57", nocombine = true })

    -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#61afef", nocombine = true })

    -- 2. Use the IBL hook to define custom highlight groups
    -- This ensures the highlights are reapplied whenever the colorscheme changes.
    local hooks = require "ibl.hooks"
    
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      -- Indent line colors (thin lines)
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#E06C75", nocombine = true })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#E5C07B", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#98C379", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#61AFEF", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#C678DD", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#56B6C2", nocombine = true, })
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4a4e57", nocombine = true })


      -- Scope/rainbow colors (for current context)
      -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD", nocombine = true, })
      -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2", nocombine = true, })

      vim.api.nvim_set_hl(0, "IblScope", { fg = "#61afef", nocombine = true })
    end)
    require("ibl").setup { scope = { highlight = highlight } }

    hooks.register(
      hooks.type.SCOPE_HIGHLIGHT,
      hooks.builtin.scope_highlight_from_extmark
    )
  end
}
