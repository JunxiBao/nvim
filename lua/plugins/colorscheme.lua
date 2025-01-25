return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "cool", -- 可选：'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        transparent = true, -- 设置透明背景
        term_colors = true, -- 使用终端颜色
        ending_tildes = true, -- 取消空行波浪线
        cmp_itemkind_reverse = false, -- 不反转补全菜单的图标顺序
        code_style = {
          comments = "italic", -- 注释斜体
          keywords = "bold", -- 关键字加粗
          functions = "bold,italic", -- 函数加粗斜体
          strings = "none", -- 字符串样式
          variables = "none", -- 变量样式
        },
        diagnostics = {
          darker = true, -- 更深的诊断颜色
          undercurl = true, -- 启用下划线
          background = true, -- 禁用诊断背景色
        },
      })
      require("onedark").load()
    end,
  },
}
