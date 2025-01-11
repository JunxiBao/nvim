return {
  -- 1. vimtex 插件配置
  {
    "lervag/vimtex",
    config = function()
      -- PDF 查看器
      vim.env.PATH = vim.env.PATH .. ":/Library/TeX/texbin"

      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_activate = 1

      -- 使用 latexmk 作为增量编译器
      vim.g.vimtex_compiler_method = "latexmk"
      -- 禁用 quickfix 自动弹出
      vim.g.vimtex_quickfix_mode = 0
      -- 启用基于语法的折叠功能
      vim.g.tex_fold_enabled = 1
      vim.o.foldmethod = "syntax"

      -- 设置 conceal 级别，提升文档可读性
      vim.o.conceallevel = 1
      vim.g.tex_conceal = "abdmg"
      --连续编译
      vim.g.vimtex_compiler_latexmk = {
        continuous = 1,
      }
      --清理文件
      vim.api.nvim_create_autocmd("User", {
        pattern = "VimtexEventQuit",
        callback = function()
          vim.fn["vimtex#compiler#clean"](0)
        end,
      })
    end,
  },

  -- 2. nvim-treesitter 插件配置
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "latex" }, -- 确保安装 latex 的语法支持
      highlight = {
        enable = true, -- 启用语法高亮
      },
    },
  },

  -- 3. nvim-cmp 插件配置
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP 补全
      "hrsh7th/cmp-buffer", -- 缓冲区补全
      "hrsh7th/cmp-path", -- 文件路径补全
      "saadparwaiz1/cmp_luasnip", -- Snippets 支持
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- 使用 LuaSnip
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Tab 切换补全项
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Shift+Tab 切换
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 回车确认补全
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
