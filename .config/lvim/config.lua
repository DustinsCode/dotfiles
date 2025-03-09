lvim.plugins = {
  { "rose-pine/neovim", name = "rose-pine" }
}

lvim.colorscheme = "rose-pine-moon"
vim.opt.timeoutlen = 150
vim.opt.tabstop = 4
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- Custom Keybindings
lvim.builtin.which_key.mappings["t"] = {
  name = "NvimTree",
  t = { "<cmd>NvimTreeToggle<CR>", "toggle" },
  f = { "<cmd>NvimTreeFocus<CR>", "focus" }
}

-- LSP Manager
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
