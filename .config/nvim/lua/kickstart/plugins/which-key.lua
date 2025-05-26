-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- Document existing key chains
    spec = {
      { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
      { '<leader>d', group = 'Debug' },
      { '<leader>b', group = 'Buffer' },
      { '<leader>r', group = 'Rename' },
      { '<leader>s', group = 'Search' },
      { '<leader>f', group = 'Find' },
      { '<leader>t', group = 'Toggle' },
      { '<leader>G', group = 'Git', mode = { 'n', 'v' } },
      { '<leader>x', group = 'Diagnostics' },
      { '<leader>u', group = 'Display' },
    },
  },
}
