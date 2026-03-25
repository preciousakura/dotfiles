-- Python (pyright)
vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
})

-- TypeScript/JavaScript
vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

-- Clojure
vim.lsp.config("clojure_lsp", {
  cmd = { "clojure-lsp" },
  filetypes = { "clojure", "edn" },
  root_markers = { "project.clj", "deps.edn", "bb.edn", "shadow-cljs.edn", ".git" },
})

-- Copilot
vim.lsp.config("copilot", {
  cmd = { "node", vim.fn.stdpath("data") .. "/lazy/copilot.lua/copilot/index.js" },
  filetypes = { "python", "javascript", "typescript", "lua", "clojure" }, 
  root_markers = { ".git" },
})

vim.lsp.enable({ "pyright", "ts_ls", "clojure_lsp" })
