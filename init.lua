vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
})

require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.mason")
