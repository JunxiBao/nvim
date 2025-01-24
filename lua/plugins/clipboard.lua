return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
    { "kkharji/sqlite.lua", module = "sqlite" }, -- 用于剪贴板持久化
  },
  config = function()
    require("neoclip").setup({
      history = 1000, -- 最大历史记录数
      enable_persistent_history = true, -- 开启持久化
      preview = true, -- 在 Telescope 中预览剪贴板内容
      default_register = '"+', -- 默认记录系统剪贴板
      keys = {
        telescope = {
          i = {
            paste = "<cr>", -- 粘贴选中内容
            delete = "<c-d>", -- 删除选中内容
            quit = "<c-q>",
          },
        },
      },
    })
    require("telescope").load_extension("neoclip")
  end,
}
