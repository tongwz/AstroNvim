local utils = require "astronvim.utils"
local get_icon = utils.get_icon
return {
  -- 加入flash.nvim跳转插件
  ["<leader>s"] = { function() require("flash").jump() end, desc = get_icon("Search", 1, true) .. "Flash Search" },
  ["<leader><leader>s"] = { function() require("flash").treesitter() end, desc = "Flash Treesitter" },
}
