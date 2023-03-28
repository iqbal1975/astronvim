-- customize mason plugins
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-debug-adapter",
        "codelldb",
        "delve",
        "eslint_d",
        "flake8",
        "prettier",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "emmet_ls",
        "eslint",
        "gopls",
        "html",
        "intelephense",
        "jsonls",
        "julials",
        "lua_ls",
        "marksman",
        "prosemd_lsp",
        "pyright",
        "rust_analyzer",
        "tailwindcss",
        "tsserver",
        "vimls",
        "yamlls",
        "zk",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "shellcheck",
        "stylua",
        "black",
        "isort",
        "prettierd",
        "shfmt",
        "shellcheck",
      },
    },
    config = function(_, opts)
      local mason_null_ls = require "mason-null-ls"
      local null_ls = require "null-ls"
      mason_null_ls.setup(opts)
      mason_null_ls.setup_handlers {
        taplo = function() end, -- disable taplo in null-ls, it's taken care of by lspconfig
        prettierd = function()
          null_ls.register(
            null_ls.builtins.formatting.prettierd.with { extra_filetypes = { "markdown", "rmd", "qmd" } }
          )
        end,
      }
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "bash",
        "cppdbg",
        "delve",
        "gopls",
        "js",
        "php",
        "python",
        "rust",
      },
    },
  },
}
