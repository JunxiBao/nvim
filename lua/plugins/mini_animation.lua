-- 完整的 mini.animate 配置文件
return {
  "echasnovski/mini.animate",
  version = false, -- 使用最新版本
  opts = {},
  config = function()
    require("mini.animate").setup({
      -- 光标移动动画
      cursor = {
        enable = true,
        timing = require("mini.animate").gen_timing.cubic({ duration = 10 }), -- 三次缓动，300ms
        path = require("mini.animate").gen_path.line(), -- 直线路径
      },

      -- 页面滚动动画
      scroll = {
        enable = true,
        subscroll = nil, -- nil 表示完整滚动
      },

      -- 窗口大小调整动画
      resize = {
        enable = true,
      },

      -- 窗口打开动画
      open = {
        enable = true,
      },

      -- 窗口关闭动画
      close = {
        enable = true,
      },
    })
  end,
}
