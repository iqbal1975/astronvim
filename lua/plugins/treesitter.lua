-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "andymass/vim-matchup",
      init = function() vim.g.matchup_matchparen_deferred = 1 end,
    },
  },
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "comment",
      "cpp",
      "css",
      "diff",
      "go",
      "html",
      "java",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "rust",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    },
    auto_install = vim.fn.executable "tree-sitter" == 1,
    highlight = { disable = { "help" } },
    indent = { enable = true, disable = { "python" } },
    matchup = { enable = true },
    rainbow = { enable = true },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {

          ["aA"] = { query = "@attribute.outer", desc = "Select outer part of an Attribute" },
          ["iA"] = { query = "@attribute.inner", desc = "Select inner part of an Attribute" },

          ["aB"] = { query = "@block.outer", desc = "Select outer part of a Block" },
          ["iB"] = { query = "@block.inner", desc = "Select inner part of a Block" },

          -- You can use the capture groups defined in textobjects.scm
          ["a="] = { query = "@assignment.outer", desc = "Select outer part of an Assignment" },
          ["i="] = { query = "@assignment.inner", desc = "Select inner part of an Assignment" },
          ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an Assignment" },
          ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an Assignment" },

          ["aC"] = { query = "@comment.outer", desc = "Select outer part of a Comment" },
          ["iC"] = { query = "@comment.inner", desc = "Select inner part of a Comment" },

          ["aD"] = { query = "@conditional.outer", desc = "Select outer part of a Conditional" },
          ["iD"] = { query = "@conditional.inner", desc = "Select inner part of a Conditional" },

          ["aF"] = { query = "@call.outer", desc = "Select outer part of a Function call" },
          ["iF"] = { query = "@call.inner", desc = "Select inner part of a Function call" },

          ["aL"] = { query = "@loop.outer", desc = "Select outer part of a Loop" },
          ["iL"] = { query = "@loop.inner", desc = "Select inner part of a Loop" },

          ["aM"] = { query = "@function.outer", desc = "Select outer part of a Method/Function definition" },
          ["iM"] = { query = "@function.inner", desc = "Select inner part of a Method/Function definition" },

          ["aN"] = { query = "@number.outer", desc = "Select outer part of a Number" },
          ["iN"] = { query = "@number.inner", desc = "Select inner part of a Number" },

          ["aP"] = { query = "@parameter.outer", desc = "Select outer part of a Parameter/Argument" },
          ["iP"] = { query = "@parameter.inner", desc = "Select inner part of a Parameter/Argument" },

          -- works for javascript/typescript files (custom captures I created in after/queries/ecma/textobjects.scm)
          ["a:"] = { query = "@property.outer", desc = "Select outer part of an object property" },
          ["i:"] = { query = "@property.inner", desc = "Select inner part of an object property" },
          ["l:"] = { query = "@property.lhs", desc = "Select left part of an object property" },
          ["r:"] = { query = "@property.rhs", desc = "Select right part of an object property" },

          ["aR"] = { query = "@regex.outer", desc = "Select outer part of a Regex" },
          ["iR"] = { query = "@regex.inner", desc = "Select inner part of a Regex" },

          ["aS"] = { query = "@statement.outer", desc = "Select outer part of a Statement" },
          ["iS"] = { query = "@statement.inner", desc = "Select inner part of a Statement" },

          ["aX"] = { query = "@class.outer", desc = "Select outer part of a Class" },
          ["iX"] = { query = "@class.inner", desc = "Select inner part of a Class" },
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]b"] = { query = "@block.outer", desc = "Next Block Start" },
          ["]f"] = { query = "@call.outer", desc = "Next Function Start" },
          ["]m"] = { query = "@function.outer", desc = "Next Method/Function Start" },
          ["]p"] = { query = "@parameter.outer", desc = "Next Parameter Start" },
          ["]x"] = { query = "@class.outer", desc = "Next Class Start" },
          ["]c"] = { query = "@comment.outer", desc = "Next Comment Start" },
        },
        goto_next_end = {
          ["]B"] = { query = "@block.outer", desc = "Next Block End" },
          ["]F"] = { query = "@call.outer", desc = "Next Function End" },
          ["]M"] = { query = "@function.outer", desc = "Next Method/Function End" },
          ["]P"] = { query = "@parameter.outer", desc = "Next Parameter End" },
          ["]X"] = { query = "@class.outer", desc = "Next Class End" },
          ["]C"] = { query = "@comment.outer", desc = "Next Comment End" },
        },
        goto_previous_start = {
          ["[b"] = { query = "@block.outer", desc = "Previous Block Start" },
          ["[f"] = { query = "@call.outer", desc = "Previous Function Start" },
          ["[m"] = { query = "@function.outer", desc = "Previous Method/Function Start" },
          ["[p"] = { query = "@parameter.outer", desc = "Previous Parameter Start" },
          ["[x"] = { query = "@class.outer", desc = "Previous Class Start" },
          ["[c"] = { query = "@comment.outer", desc = "Previous Comment Start" },
        },
        goto_previous_end = {
          ["[B"] = { query = "@block.outer", desc = "Previous Block End" },
          ["[F"] = { query = "@call.outer", desc = "Previous Function End" },
          ["[M"] = { query = "@function.outer", desc = "Previous Method/Function End" },
          ["[P"] = { query = "@parameter.outer", desc = "Previous Parameter End" },
          ["[X"] = { query = "@class.outer", desc = "Previous Class End" },
          ["[C"] = { query = "@comment.outer", desc = "Previous Comment End" },
        },
      },
      swap = {
        enable = true,
        swap_next = {
          [">B"] = { query = "@block.outer", desc = "Swap Next Block" },
          [">C"] = { query = "@call.outer", desc = "Swap Next Function" },
          [">M"] = { query = "@function.outer", desc = "Swap Next Method/Function" },
          [">P"] = { query = "@parameter.inner", desc = "Swap Next Parameter" },
          [">:"] = { query = "@property.outer", desc = "Swap Next Property" },
        },
        swap_previous = {
          ["<B"] = { query = "@block.outer", desc = "Swap Previous Block" },
          ["<C"] = { query = "@call.outer", desc = "Swap Previous Function" },
          ["<M"] = { query = "@function.outer", desc = "Swap Previous Method/Function" },
          ["<P"] = { query = "@parameter.inner", desc = "Swap Previous Parameter" },
          ["<:"] = { query = "@property.outer", desc = "Swap Previous Property" },
        },
      },
      lsp_interop = {
        enable = true,
        border = "single",
        peek_definition_code = {
          ["<leader>lp"] = { query = "@function.outer", desc = "Peek Function Definition" },
          ["<leader>lP"] = { query = "@class.outer", desc = "Peek Class Definition" },
        },
      },
    },
  },
}
