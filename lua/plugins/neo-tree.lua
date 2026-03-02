return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {
    enable_git_status = true,
    enable_diagnostics = true,
    use_libuv_file_watcher = true,
    renderers = {

    },
    enable_statusline = false,
    window = {
        position = "left",
        width = 35,
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false
        },
    }
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)

    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })
    vim.keymap.set("n", "<leader>o", "<cmd>Neotree filesystem reveal<CR>", { silent = true })
    vim.keymap.set("n", "<leader>>", "<cmd>vertical resize +1<CR>")
    vim.keymap.set("n", "<leader><", "<cmd>vertical resize -1<CR>")

    vim.opt.laststatus = 0
  end,
}
