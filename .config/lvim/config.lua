lvim.plugins = {
  { "rose-pine/neovim", name = "rose-pine"}
}

vim.opt.timeoutlen=150
lvim.colorscheme = "rose-pine-moon"
vim.opt.tabstop = 4

require("lvim.lsp.manager").setup("cssls", {
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore"
      }
    }
  }
})
