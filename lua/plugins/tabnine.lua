return {
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    url = "https://githubfast.com/codota/tabnine-nvim.git",
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<Tab>", -- default keymap
        dismiss_keymap = "<C-]>", -- default keymap
        debounce_ms = 200, -- default timeout for debounce_ms
        suggestion_color = { gui = "#808080", cterm = 244 }, -- default color for suggestion_color
        exclude_filetypes = { "TelescopePrompt", "NvimTree" }, -- default exclude filetypes for suggestions
        log_file_path = nil,
        ignore_certificate_errors = false,
      })
    end,
  },
}
