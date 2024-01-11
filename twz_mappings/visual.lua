return {
  -- 整行向下
  ["<M-j>"] = {
    "<cmd>:m .+1<CR>gv=gv",
  },
  -- 整行向上
  ["<M-k>"] = {
    "<cmd>:m .-2<CR>gv=gv",
  },
}
