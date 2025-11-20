-- local on_attach = function(client, bufnr)
--   local opts = { noremap = true, silent = true, buffer = bufnr }
--
--   -- Go to definition
--   vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--   -- Hover docs (works even on built-ins)
--   vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
--   -- Find references
--   vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
--   -- Go to implementation
--   vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
-- end
--
-- return {
--   {
--     "williamboman/mason.nvim",
--     config = function()
--       require("mason").setup({
--         PATH = "prepend",
--       })
--     end,
--   },
--   {
--     "williamboman/mason-lspconfig.nvim",
--     config = function()
--       require("mason-lspconfig").setup({
--         ensure_installed = {
--           "fortls",
--           -- "nil_ls",
--           "bashls",
--           "omnisharp",
--           "cmake",
--           "lua_ls",
--           "gopls",
--           "templ",
--           "html",
--           "cssls",
--           "emmet_ls",
--           "tailwindcss",
--           "ts_ls",
--           "astro",
--           "ols",
--           -- "gdscript",
--           -- "tsserver",
--           "pylsp",
--           "clangd",
--           "prismals",
--           "yamlls",
--           "jsonls",
--           "eslint",
--           -- "hls",
--           "zls",
--           "marksman",
--           "sqlls",
--           "wgsl_analyzer",
--           "texlab",
--           "intelephense",
--           "nim_langserver",
--         },
--       })
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     dependencies = { "saghen/blink.cmp" },
--     config = function()
--       -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
--       local capabilities = require("blink.cmp").get_lsp_capabilities()
--       local lspconfig = require("lspconfig")
--       local configs = require("lspconfig.configs")
--
--       lspconfig.cmake.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.fortls.setup({
--         capabilities = capabilities,
--         root_dir = require("lspconfig").util.root_pattern("*.f90"),
--       })
--       lspconfig.purescriptls.setup({
--         capabilities = capabilities,
--         filetypes = { "purescript" },
--         settings = {
--           purescript = {
--             addSpagoSources = true, -- e.g. any purescript language-server config here
--           },
--         },
--         flags = {
--           debounce_text_changes = 150,
--         },
--       })
--       lspconfig.ols.setup({
--         capabilities = capabilities,
--         root_dir = require("lspconfig").util.root_pattern("*.odin"),
--       })
--       lspconfig.ocamllsp.setup({
--         capabilities = capabilities,
--         cmd = { "ocamllsp", "--stdio" },
--         filetypes = { "ocaml", "reason" },
--         root_dir = require("lspconfig").util.root_pattern("*.opam", "esy.json", "package.json"),
--       })
--       if not configs.roc_ls then
--         configs.roc_ls = {
--           default_config = {
--             cmd = { "roc_language_server", "--stdio" },
--             capabilties = capabilities,
--             filetypes = {
--               "roc",
--             },
--             single_file_support = true,
--           },
--         }
--       end
--       lspconfig.roc_ls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.gdscript.setup({
--         capabilities = capabilities,
--         filetypes = { "gd", "gdscript", "gdscript3" },
--       })
--       lspconfig.astro.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.nil_ls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.sqlls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.intelephense.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.texlab.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.zls.setup({
--         capabilities = capabilities,
--         cmd = { "zls" },
--         on_attach = on_attach,
--       })
--       lspconfig.hls.setup({
--         capabilities = capabilities,
--         single_file_support = true,
--       })
--       lspconfig.bashls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.lua_ls.setup({
--         capabilities = capabilities,
--         -- cmd = { "lua_ls" },
--         settings = {
--           Lua = {
--             diagnostics = {
--               globals = { "vim" }, -- Recognize 'vim' as a global variable
--             },
--             workspace = {
--               library = {
--                 vim.api.nvim_get_runtime_file("", true),
--                 "${3rd}/love2d/library",
--               }, -- Include Neovim runtime files
--             },
--             telemetry = {
--               enable = false,
--             },
--           },
--         },
--       })
--       lspconfig.wgsl_analyzer.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.jsonls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.gopls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.cssls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.prismals.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.yamlls.setup({
--         capabilities = capabilities,
--       })
--       -- lspconfig.html.setup({
--       --   capabilities = capabilities,
--       --   single_file_support = true,
--       --   filetypes = {
--       --     "templ",
--       --     "html",
--       --     "php",
--       --     "css",
--       --     "javascriptreact",
--       --     "typescriptreact",
--       --     "javascript",
--       --     "typescript",
--       --     "jsx",
--       --     "tsx",
--       --   },
--       -- })
--       -- lspconfig.htmx.setup({
--       --   capabilities = capabilities,
--       --   single_file_support = true,
--       --   filetypes = { "html", "templ" },
--       -- })
--       lspconfig.emmet_ls.setup({
--         capabilities = capabilities,
--         single_file_support = true,
--         filetypes = {
--           "templ",
--           "html",
--           "css",
--           "php",
--           "javascript",
--           "javascriptreact",
--           "typescriptreact",
--           "typescript",
--           "jsx",
--           "tsx",
--         },
--       })
--       -- lspconfig.tailwindcss.setup({
--       -- 	capabilities = capabilities,
--       -- 	filetypes = {
--       -- 		"templ",
--       -- 		"html",
--       -- 		"css",
--       -- 		"javascriptreact",
--       -- 		"typescriptreact",
--       -- 		"javascript",
--       -- 		"typescript",
--       -- 		"jsx",
--       -- 		"tsx",
--       -- 	},
--       -- 	root_dir = require("lspconfig").util.root_pattern(
--       -- 		"tailwind.config.js",
--       -- 		"tailwind.config.cjs",
--       -- 		"tailwind.config.mjs",
--       -- 		"tailwind.config.ts",
--       -- 		"postcss.config.js",
--       -- 		"postcss.config.cjs",
--       -- 		"postcss.config.mjs",
--       -- 		"postcss.config.ts",
--       -- 		"package.json",
--       -- 		"node_modules",
--       -- 		".git"
--       -- 	),
--       -- })
--       lspconfig.templ.setup({
--         capabilities = capabilities,
--         filetypes = { "templ" },
--       })
--
--       if not configs.ts_ls then
--         -- local util = require("lspconfig.util") --GPT
--         configs.ts_ls = {
--           default_config = {
--             cmd = { "typescript-language-server", "--stdio" },
--             capabilties = capabilities,
--             filetypes = {
--               "javascript",
--               "javascriptreact",
--               "typescript",
--               "typescriptreact",
--               "html",
--             },
--             root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", ".git"),
--             -- root_dir = function(fname) --GPT
--             -- return util.root_pattern("package.json", "tsconfig.json", ".git")(fname) or util.path.dirname(fname)
--             -- end,
--             single_file_support = true,
--           },
--         }
--       end
--       lspconfig.ts_ls.setup({
--         -- capabilties = capabilities,
--         -- cmd = { "typescript-language-server", "--stdio" },
--         -- filetypes = {
--         --   "javascript",
--         --   "javascriptreact",
--         --   "typescript",
--         --   "typescriptreact",
--         --   "html",
--         -- },
--         -- root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", ".git"),
--         -- single_file_support = true,
--       })
--       lspconfig.eslint.setup({
--         capabilties = capabilities,
--       })
--
--       require("lspconfig").clangd.setup({
--         cmd = {
--           "clangd",
--           "--background-index",
--           "--pch-storage=memory",
--           "--all-scopes-completion",
--           "--pretty",
--           "--header-insertion=never",
--           "-j=4",
--           "--inlay-hints",
--           "--header-insertion-decorators",
--           "--function-arg-placeholders",
--           "--completion-style=detailed",
--         },
--         filetypes = { "c", "cpp", "objc", "objcpp" },
--         root_dir = require("lspconfig").util.root_pattern("src"),
--         init_option = { fallbackFlags = { "-std=c++2a" } },
--         capabilities = capabilities,
--         single_file_support = true,
--       })
--
--       function get_python_path()
--         -- Check if there's an active virtual environment
--         local venv_path = os.getenv("VIRTUAL_ENV")
--         if venv_path then
--           return venv_path .. "/bin/python3"
--         else
--           -- get os name
--           local os_name = require("utils").get_os()
--           -- get os interpreter path
--           if os_name == "windows" then
--             return "C:/python312"
--           elseif os_name == "linux" then
--             return "/usr/bin/python3"
--           else
--             return "/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"
--           end
--           -- Fallback to global Python interpreter
--         end
--       end
--
--       lspconfig.pylsp.setup({
--         capabilties = capabilities,
--         settings = {
--           python = {
--             pythonPath = get_python_path(),
--           },
--         },
--       })
--
--       lspconfig.marksman.setup({
--         capabilties = capabilities,
--       })
--       lspconfig.gleam.setup({
--         capabilties = capabilities,
--       })
--       lspconfig.nim_langserver.setup({
--         capabilties = capabilities,
--       })
--       lspconfig.omnisharp.setup({
--         capabilties = capabilities,
--         cmd = { "OmniSharp" },
--       })
--       lspconfig.fennel_ls.setup({
--         capabilties = capabilities,
--         cmd = { "fennel-ls" },
--       })
--       lspconfig.rescriptls.setup({
--         capabilties = capabilities,
--         cmd = { "rescript-language-server", "--stdio" },
--         root_dir = require("lspconfig").util.root_pattern("rescript.json"),
--       })
--       lspconfig.julials.setup({
--         capabilties = capabilities,
--         cmd = { "julia-lsp" },
--         root_dir = require("lspconfig").util.root_pattern("*.jl"),
--       })
--     end,
--   },
-- }

-- gemini
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({ PATH = "prepend" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "cmake",
          "lua_ls",
          "html",
          "cssls",
          "tailwindcss",
          "ts_ls",
          "clangd",
          "yamlls",
          "jsonls",
          "eslint",
          "zls",
          "intelephense",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- MODERN KEYMAP SETUP (The "LspAttach" way)
      -- This replaces the 'on_attach' function and applies to ALL servers automatically
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }
          -- Your keymaps
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        end,
      })

      ------------------------------------------------------
      -- Helper to keep config clean
      ------------------------------------------------------
      local function setup(server, opts)
        -- Force capabilities on all servers
        -- opts = opts or {}
        -- opts.capabilities = vim.tbl_deep_extend("force", capabilities, opts.capabilities or {})
        -- lspconfig[server].setup(opts)

        -- helper approach
        -- Get the raw default config from nvim-lspconfig (bypassing the deprecated setup framework)
        local ok = pcall(require, "lspconfig.configs." .. server)

        if not ok then
          vim.notify("LSP: Server not found " .. server, vim.log.levels.ERROR)
          return
        end

        local config_module = require("lspconfig.configs")[server]
        if not config_module then
          return
        end

        local defaults = config_module.default_config

        -- Merge defaults with your user options
        local final_opts = vim.tbl_deep_extend("force", defaults, opts or {})

        -- Ensure capabilities are applied
        final_opts.capabilities = vim.tbl_deep_extend("force", capabilities, final_opts.capabilities or {})

        -- 3. Use the NATIVE Neovim 0.11 API
        -- This registers the config so Neovim starts it automatically when opening filetypes
        vim.lsp.config(server, final_opts)
        vim.lsp.enable(server)
      end

      ------------------------------------------------------
      -- SERVER SETUPS
      ------------------------------------------------------

      setup("cmake")
      setup("astro")
      setup("nil_ls")
      setup("sqlls")
      setup("intelephense")
      setup("texlab")
      setup("bashls")
      setup("wgsl_analyzer")
      setup("jsonls")
      setup("gopls")
      setup("cssls")
      setup("prismals")
      setup("yamlls")
      setup("ts_ls")
      setup("eslint")
      setup("marksman")
      setup("gleam")
      setup("nim_langserver")

      setup("fortls", {
        root_dir = lspconfig.util.root_pattern("*.f90"),
      })

      setup("purescriptls", {
        filetypes = { "purescript" },
        settings = { purescript = { addSpagoSources = true } },
        flags = { debounce_text_changes = 150 },
      })

      setup("ols", {
        root_dir = lspconfig.util.root_pattern("*.odin"),
      })

      setup("ocamllsp", {
        cmd = { "ocamllsp", "--stdio" },
        filetypes = { "ocaml", "reason" },
        root_dir = lspconfig.util.root_pattern("*.opam", "esy.json", "package.json"),
      })

      setup("roc_ls", { single_file_support = true })

      setup("gdscript", {
        filetypes = { "gd", "gdscript", "gdscript3" },
      })

      setup("zls", {
        cmd = { "zls" },
      })

      setup("hls", { single_file_support = true })

      setup("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = {
                vim.api.nvim_get_runtime_file("", true),
                "${3rd}/love2d/library",
              },
            },
            telemetry = { enable = false },
          },
        },
      })

      setup("emmet_ls", {
        single_file_support = true,
        filetypes = {
          "templ",
          "html",
          "css",
          "php",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "typescript",
          "jsx",
          "tsx",
        },
      })

      setup("templ", { filetypes = { "templ" } })

      setup("clangd", {
        cmd = {
          "clangd",
          "--background-index",
          "--pch-storage=memory",
          "--all-scopes-completion",
          "--pretty",
          "--header-insertion=never",
          "-j=4",
          "--inlay-hints",
          "--header-insertion-decorators",
          "--function-arg-placeholders",
          "--completion-style=detailed",
        },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("src"),
        init_option = { fallbackFlags = { "-std=c++2a" } },
        single_file_support = true,
      })

      -- Python Path Logic
      local function get_python_path()
        local venv_path = os.getenv("VIRTUAL_ENV")
        if venv_path then
          return venv_path .. "/bin/python3"
        end
        -- Simplified OS logic to avoid dependency on "utils" if not present
        if vim.fn.has("win32") == 1 then
          return "C:/python312"
        elseif vim.fn.has("unix") == 1 then
          local handle = io.popen("uname -s")
          local uname = handle:read("*a")
          handle:close()
          if uname:match("Darwin") then
            return "/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"
          else
            return "/usr/bin/python3"
          end
        end
      end

      setup("pylsp", {
        settings = {
          python = { pythonPath = get_python_path() },
        },
      })

      setup("omnisharp", {
        cmd = { "OmniSharp" },
      })

      setup("fennel_ls", {
        cmd = { "fennel-ls" },
      })

      setup("rescriptls", {
        cmd = { "rescript-language-server", "--stdio" },
        root_dir = lspconfig.util.root_pattern("rescript.json"),
      })

      setup("julials", {
        cmd = { "julia-lsp" },
        root_dir = lspconfig.util.root_pattern("*.jl"),
      })
    end,
  },
}
-------- thanks gemini
