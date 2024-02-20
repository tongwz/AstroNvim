return {
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- 取消掉默认的快捷键
  { "folke/flash.nvim", keys = function() return {} end },
  -- 网友推荐搜索优化
  { import = "astrocommunity.search.nvim-hlslens" },
}
