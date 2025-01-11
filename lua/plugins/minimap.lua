return {
  "wfxr/minimap.vim",
  build = "cargo install --locked code-minimap",
  config = function()
    -- 设置 minimap 的宽度
    vim.g.minimap_width = 15

    -- 启动时自动打开 minimap
    vim.g.minimap_auto_start = 1

    -- 进入窗口时自动启动 minimap
    vim.g.minimap_auto_start_win_enter = 1

    -- 高亮搜索结果
    vim.g.minimap_highlight_search = 1

    -- 在 minimap 中使用 Git 颜色高亮
    vim.g.minimap_git_colors = 1

    -- 指定不显示 minimap 的文件类型
    vim.g.minimap_block_filetypes = { "NvimTree", "TelescopePrompt", "dashboard", "packer", "lazy" }

    -- 使用 Visual 模式高亮光标
    vim.g.minimap_cursor_highlight = "Visual"

    -- 同步滚动
    vim.g.minimap_sync_scroll = 1

    -- 设置 minimap 的更新频率（毫秒）
    vim.g.minimap_update_rate = 50

    -- 检查是否安装了 code-minimap
    if vim.fn.executable("code-minimap") == 0 then
      vim.api.nvim_err_writeln(
        "Error: code-minimap not found. Please install it by running 'cargo install --locked code-minimap'."
      )
    end
  end,
  cmd = { "Minimap", "MinimapClose", "MinimapToggle" },
}
