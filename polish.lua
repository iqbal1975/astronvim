return {
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
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
    -- create an augroup to easily manage autocommands
    vim.api.nvim_create_augroup("autohidetabline", { clear = true })
    -- create a new autocmd on the "User" event
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
  end,
  -- YAML function
  -- yaml_ft = function(path, bufnr)
  --   -- get content of buffer as string
  --   local content = vim.filetype.getlines(bufnr)
  --   if type(content) == "table" then content = table.concat(content, "\n") end
  --
  --   -- check if file is in roles, tasks, or handlers folder
  --   local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
  --   if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
  --   -- check for known ansible playbook text and if found, return yaml.ansible
  --   local regex = vim.regex "hosts:\\|tasks:"
  --   if regex and regex:match_str(content) then return "yaml.ansible" end
  --
  --   -- return yaml if nothing else
  --   return "yaml"
  -- end,
  -- vim.filetype.add {
  --   extension = {
  --     qmd = "markdown",
  --     yml = yaml_ft,
  --     yaml = yaml_ft,
  --   },
  --   pattern = {
  --     ["/tmp/neomutt.*"] = "markdown",
  --   },
  -- },
  -- require "user.autocmds",
}
