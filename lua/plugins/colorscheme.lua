-- LazyVim 配置 gruvbox 主题
return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,  -- 提高优先级，防止被其他主题覆盖
    lazy = false,     -- 启动时加载
    opts = {
      terminal_colors = true, -- 使用终端颜色
      contrast = "hard",      -- 可选: soft, medium, hard
      transparent_mode = false,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
