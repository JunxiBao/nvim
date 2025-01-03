return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 20, -- 设置浮动终端的大小
      open_mapping = [[<C-\>]], -- 绑定打开/关闭终端的快捷键
      direction = "float", -- 设置浮动模式
      shade_terminals = true, -- 设置终端阴影效果
    })
  end,
}
