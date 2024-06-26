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
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup {}
    end,
  },

  {
    "j-hui/fidget.nvim",
    config = function() require("fidget").setup() end,
  },

  { "willothy/flatten.nvim", lazy = false, priority = 1001, opts = { window = { open = "vsplit" } } },
}
