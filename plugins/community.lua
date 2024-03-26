return {
  -- Add the community repository of plugin specifications
  -- "AstroNvim/astrocommunity",
  { "Astronvim/astrocommunity", version = "^6" },
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },

  { import = "astrocommunity.color.mini-hipatterns" },
  { import = "astrocommunity.color.twilight-nvim" },

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.colorscheme.dracula-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.rose-pine", enabled = true },

  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },

  { import = "astrocommunity.git.octo-nvim" },

  { import = "astrocommunity.markdown-and-latex.vimtex" },

  { import = "astrocommunity.media.vim-wakatime" },

  { import = "astrocommunity.motion.harpoon" },

  { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.note-taking.zk-nvim" },

  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },

  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.project.projectmgr-nvim" },

  { import = "astrocommunity.split-and-window.edgy-nvim" },

  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.syntax.vim-sandwich" },

  { import = "astrocommunity.test.neotest" },

  -- { import = "astrocommunity.utility.neodim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.nvim-toggler" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },

  { import = "astrocommunity.workflow.bad-practices-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
}
