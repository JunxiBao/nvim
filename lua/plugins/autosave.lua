return {
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,                                  -- 启用自动保存
        trigger_events = { "InsertLeave", "TextChanged" }, -- 在插入模式离开和文本改变时触发自动保存
      })
    end,
  },
}
