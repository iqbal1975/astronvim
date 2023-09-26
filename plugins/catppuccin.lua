return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    dim_inactive = { enabled = true, percentage = 0.25 },
    opts = {
      integrations = {
        aerial = true,
        cmp = true,
        dap = { enabled = true, enable_ui = true },
        leap = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        mini = true,
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        nvimtree = false,
        overseer = true,
        rainbow_delimiters = true,
        sandwich = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        which_key = true,
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
