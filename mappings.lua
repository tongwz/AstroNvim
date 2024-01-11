-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = require "user.twz_mappings.normal",
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = require "user.twz_mappings.visual",
}
