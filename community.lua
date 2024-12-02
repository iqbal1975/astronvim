-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },

  { import = "astrocommunity.color.mini-hipatterns" },
  { import = "astrocommunity.color.twilight-nvim" },

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.colorscheme.dracula-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.gruvbox-baby", enabled = true },
  { import = "astrocommunity.colorscheme.rose-pine", enabled = true },

  { import = "astrocommunity.completion.codeium-nvim" },
  -- { import = "astrocommunity.completion.copilot-cmp" },

  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },

  { import = "astrocommunity.fuzzy-finder.fzf-lua" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },

  { import = "astrocommunity.git.octo-nvim" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },

  { import = "astrocommunity.media.vim-wakatime" },

  { import = "astrocommunity.motion.grapple-nvim" },
  { import = "astrocommunity.motion.harpoon" },

  { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.note-taking.zk-nvim" },

  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
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
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.yaml" },

  { import = "astrocommunity.project.projectmgr-nvim" },

  { import = "astrocommunity.quickfix.nvim-bqf" },

  { import = "astrocommunity.split-and-window.edgy-nvim" },

  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.syntax.vim-sandwich" },

  { import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },

  { import = "astrocommunity.test.neotest" },

  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.nvim-toggler" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.utility.telescope-lazy-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },

  { import = "astrocommunity.workflow.bad-practices-nvim" },
}
