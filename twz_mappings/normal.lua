return {
  -- second key is the lefthand side of the map

  -- navigate buffer tabs with `H` and `L`
  -- L = {
  --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
  --   desc = "Next buffer",
  -- },
  -- H = {
  --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
  --   desc = "Previous buffer",
  -- },

  -- normal 模式下的快捷键
  -- mappings seen under group name "Buffer"
  ["<leader>bD"] = {
    function()
      require("astronvim.utils.status").heirline.buffer_picker(
        function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
      )
    end,
    desc = "Pick to close",
  },
  -- tables with the `name` key will be registered with which-key if it's installed
  -- this is useful for naming menus
  ["<leader>b"] = { name = "Buffers" },
  -- quick save
  -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  ["<leader>Gs"] = { -- 这个是填充struct结构体
    "<cmd>GoFillStruct<cr>",
    desc = "auto fill struct",
  },
  ["<leader>Ge"] = { -- 这个是填充if err 但是发现没有用
    "<cmd>GoIfErr<cr>",
    desc = "add if err",
  },
  ["<leader>Gw"] = {
    "<cmd>GoFillSwitch<cr>",
    desc = "fill switch",
  },
  -- 加入一个查看当前buffer路径的命令
  ["<leader>T"] = { name = "童伟珍自定义", desc = "童伟珍自定义" },
  ["<leader>Tp"] = {
    '<cmd>lua vim.notify(vim.fn.expand("%:p"))<cr>',
    desc = "Show Path",
  },
  -- 将bufferline的快捷键加一个
  ["<M-Right>"] = {
    function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    desc = "Next buffer",
  },
  -- 这个l也是跟right同样的效果
  ["<M-l>"] = {
    function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    desc = "Next buffer",
  },

  ["<M-Left>"] = {
    function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    desc = "Previous buffer",
  },
  ["<M-h>"] = {
    function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    desc = "Previous buffer",
  },
}
