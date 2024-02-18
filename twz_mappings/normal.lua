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
  ["<leader>G"] = { desc = "Golang" },
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
  ["<leader>T"] = { name = "TongWz自定义", desc = "TongWz自定义" },
  ["<leader>Tp"] = {
    '<cmd>lua vim.notify(vim.fn.expand("%:p"))<cr>',
    desc = "Show Path",
  },

  ["<leader>Ti"] = { "<cmd>lua InsertCommentPreCurrentFunc()<CR>", desc = "当前函数的上一行插入注释" }, -- 加入注释
  ["<leader>TI"] = { "<cmd>lua InsertCommentPreLine()<CR>", desc = "当前行上一行插入注释" }, -- 加入注释

  ["<leader>SF"] = { "<cmd>SessionManager! load_session<cr>", desc = "Search sessions2" }, -- 查询session大小写f兼容

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
  -- 整行向下
  ["<M-j>"] = { "<cmd>:m .+1<CR>gv=gv" },
  -- 整行向上
  ["<M-k>"] = { "<cmd>:m .-2<CR>gv=gv" },
  -- 使用easymotion 类似的跳转快捷键 -- 快捷键名称是hop.nvim
  ["<M-;>"] = { "<cmd>HopWord<cr>" },
  ["<M-'>"] = { "<cmd>HopChar1<cr>" },
}
