return {
  -- 添加 vscode.nvim 插件
  {
    "Mofiqul/vscode.nvim",
    config = function()
      -- 设置主题为 vscode
      vim.g.vscode_transparent = true
      vim.g.vscode_enable_current_line = true -- 启用高亮当前行
      vim.g.vscode_style = "dark" -- 可选择 'dark' 或 'light'
      vim.cmd([[colorscheme vscode]])
    end,
  },
}
