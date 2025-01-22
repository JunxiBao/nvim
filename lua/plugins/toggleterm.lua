return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 10, -- 设置浮动终端的大小
      open_mapping = [[<C-\>]], -- 绑定打开/关闭终端的快捷键
      direction = "horizontal", -- 设置浮动模式
      shade_terminals = true, -- 设置终端阴影效果
      start_in_insert = true, -- 打开终端自动进入插入模式
    })
  end,
}
