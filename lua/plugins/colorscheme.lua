-- 这是一个 LazyVim 插件配置文件，用于安装和设置 tokyonight 主题
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,       -- 启动时加载
    priority = 1000,    -- 提高优先级，防止被其他主题覆盖
    opts = {
      style = "moon",   -- 可选: night, storm, moon, day
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
