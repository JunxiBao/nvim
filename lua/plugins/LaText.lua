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
}
