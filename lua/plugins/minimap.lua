return {
  "wfxr/minimap.vim",
  build = "cargo install --locked code-minimap",
  config = function()
    vim.g.minimap_width = 15
    vim.g.minimap_auto_start = 1
    vim.g.minimap_highlight_search = 1
    vim.g.minimap_git_colors = 1
    vim.g.minimap_block_filetypes = { "NvimTree", "TelescopePrompt", "dashboard" }
    vim.g.minimap_cursor_highlight = "Visual"
    vim.g.minimap_sync_scroll = 1
    vim.g.minimap_update_rate = 50
  end,
  cmd = { "Minimap", "MinimapClose", "MinimapToggle" },
}
