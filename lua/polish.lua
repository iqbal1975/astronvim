-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

-- Create an augroup to easily manage autocommands
vim.api.nvim_create_augroup("autohidetabline", { clear = true })

-- Create a new autocmd on the "User" event
vim.api.nvim_create_autocmd("User", {
  desc = "Hide tabline when only one buffer and one tab", -- nice description
  -- triggered when vim.t.bufs is updated
  pattern = "AstroBufsUpdated", -- the pattern is the name of our User autocommand events
  group = "autohidetabline", -- add the autocmd to the newly created augroup
  callback = function()
    -- if there is more than one buffer in the tab, show the tabline
    -- if there are 0 or 1 buffers in the tab, only show the tabline if there is more than one vim tab
    local new_showtabline = #vim.t.bufs > 1 and 2 or 1
    -- check if the new value is the same as the current value
    if new_showtabline ~= vim.opt.showtabline:get() then
      -- if it is different, then set the new `showtabline` value
      vim.opt.showtabline = new_showtabline
    end
  end,
})

-- Text like documents enable wrap and spell
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text", "plaintex" },
  group = vim.api.nvim_create_augroup("auto_spell", { clear = true }),
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
