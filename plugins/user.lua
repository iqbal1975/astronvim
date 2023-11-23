return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "arsham/indent-tools.nvim",
    dependencies = { "arsham/arshlib.nvim" },
    event = "User AstroFile",
    config = function() require("indent-tools").config {} end,
  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = {
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },

  {
    "j-hui/fidget.nvim",
    config = function() require("fidget").setup() end,
  },

  { "junegunn/vim-easy-align", event = "User AstroFile" },

  { "machakann/vim-sandwich", event = "User AstroFile" },

  { "willothy/flatten.nvim", lazy = false, priority = 1001, opts = { window = { open = "vsplit" } } },
}
