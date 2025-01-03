return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- 依赖库
    cmd = "LazyGit", -- 仅在运行命令时加载
    keys = {
      { "<leader>lg", ":LazyGit<CR>", desc = "Open LazyGit" }, -- 快捷键绑定
    },
    config = function()
      -- 如果需要额外配置，可以在这里添加
    end,
  },
}
