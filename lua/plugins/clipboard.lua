return {
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      { "kkharji/sqlite.lua", module = "sqlite" }, -- 提升性能（可选）
    },
    config = function()
      require("neoclip").setup({
        history = 1000, -- 保存历史条目数量
        enable_persistent_history = true, -- 启用持久化
        continuous_sync = true, -- 自动同步剪贴板
      })
      require("telescope").load_extension("neoclip")
    end,
  },
}
