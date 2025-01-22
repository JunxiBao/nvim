-- LazyVim configuration with Kanagawa theme
-- Ensure to save this file in your plugin directory or configuration setup.

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- Load immediately for seamless experience
    priority = 1000, -- Ensures it loads first
    config = function()
      require("kanagawa").setup({
        compile = true, -- Enable compiled colorscheme for faster startup
        undercurl = true, -- Enables undercurl for better emphasis
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true },
        variablebuiltinStyle = { bold = true },
        specialReturn = true, -- Highlight return keywords
        specialException = true, -- Highlight exception keywords
        dimInactive = true, -- Dim inactive windows for focus
        globalStatus = true, -- Use global status line
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none", -- Remove gutter background
              },
            },
          },
        },
        overrides = function(colors)
          return {
            NormalFloat = { bg = colors.palette.sumiInk2 },
            FloatBorder = { bg = colors.palette.sumiInk2 },
            Pmenu = { bg = colors.palette.sumiInk1 },
            PmenuSel = { bg = colors.palette.waveBlue1 },
          }
        end,
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
