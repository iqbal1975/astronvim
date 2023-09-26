return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "j-hui/fidget.nvim",
    config = function() require("fidget").setup() end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup {
        -- optional configuration
        keymaps = {
          submit = "<C-a>",
        },
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
