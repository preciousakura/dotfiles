-- Clojure
vim.lsp.config("clojure_lsp", {
  cmd = { "clojure-lsp" },
  filetypes = { "clojure", "edn" },
  root_markers = { "project.clj", "deps.edn", "bb.edn", "shadow-cljs.edn", ".git" },
})

-- Copilot
vim.lsp.config("copilot", {
  cmd = { "node", vim.fn.stdpath("data") .. "/lazy/copilot.lua/copilot/index.js" },
  filetypes = { "lua", "clojure" },
  root_markers = { ".git" },
})

vim.lsp.enable({ "clojure_lsp" })
