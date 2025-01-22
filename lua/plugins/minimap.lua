return {
  "simrat39/symbols-outline.nvim",
  config = function()
    require("symbols-outline").setup({
      -- 在此处添加任何自定义配置
      position = "left", -- 将窗口位置设置为右侧
      width = 30, -- 窗口宽度
    })
  end,
}
