-- set vim options here (vim.<first_key>.<second_key> = value)
-- set to true or false etc.
-- Global
vim.g.mapleader = " " -- sets vim.g.mapleader
vim.g.autoformat_enabled = true -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
vim.g.cmp_enabled = true -- enable completion at start
vim.g.autopairs_enabled = true -- enable autopairs at start
vim.g.diagnostics_mode = 3 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
vim.g.icons_enabled = true -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
vim.g.ui_notifications_enabled = true -- disable notifications when toggling UI elements

-- Optional
vim.opt.colorcolumn = "120"
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.listchars = {
  -- list of hidden characters
  tab = "» ",
  trail = "•",
  precedes = "←",
  extends = "→",
  eol = "↲",
  space = "␣",
}
vim.opt.nrformats = { "alpha", "octal", "hex" }
vim.opt.showbreak = "↪"
vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.statuscolumn = "%l %r"
-- vim.opt.number = true -- sets vim.opt.number
-- vim.opt.relativenumber = true -- sets vim.opt.relativenumber
vim.opt.signcolumn = "auto" -- sets vim.opt.signcolumn to auto
vim.opt.spell = false -- sets vim.opt.spell
vim.opt.wrap = false -- sets vim.opt.wrap

-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
