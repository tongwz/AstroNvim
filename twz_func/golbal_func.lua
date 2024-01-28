-- 自定义函数
local commentText = [[
/**
 * @note: 
 * @auth: tongWz
 * @date: $date
**/]]

-- 在当前函数内 函数前面一行写入注释
function insert_comment()
  vim.api.nvim_command "set paste"
  local currentDate = os.date "%Y-%m-%d %H:%M:%S"
  local replacedComment = string.gsub(commentText, "%$date", currentDate)
  -- :gsub("^%s*", "")
  vim.api.nvim_command("normal [{O" .. replacedComment)
  vim.api.nvim_command "normal kkk$"
  vim.api.nvim_command "set nopaste"
end
-- 这个在当前行上一行写入注释
function insert_comment2()
  vim.api.nvim_command "set paste"
  local currentDate = os.date "%Y-%m-%d %H:%M:%S"
  local replacedComment = string.gsub(commentText, "%$date", currentDate)
  vim.api.nvim_command("normal O" .. replacedComment)
  vim.api.nvim_command "normal kkk$"
  vim.api.nvim_command "set nopaste"
end
