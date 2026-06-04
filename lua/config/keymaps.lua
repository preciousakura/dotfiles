local map = vim.keymap.set

-- General
map("n", "<leader>s", "<cmd>w<cr>", { desc = "save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "close window" })

-- Yank
map('n', '<leader>ya', ':%y+<CR>', { desc = "Copy entire content file" })

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    map("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
    map("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
    map("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Find references" }))
    map("n", "gi", vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
    map("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover documentation" }))
    map("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code action" }))
    map("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
    map("n", "<leader>cf", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, vim.tbl_extend("force", opts, { desc = "Format file" }))
  end,
})

-- Copy Paths
map("n", "<leader>fpa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify("Copied Absolute: " .. path)
end, { desc = "Copy absolute path" })

map("n", "<leader>fpr", function()
    local path = vim.fn.expand("%")
    vim.fn.setreg("+", path)
    vim.notify("Copied Relative: " .. path)
end, { desc = "Copy relative path" })

map("n", "<leader>fpn", function()
    local path = vim.fn.expand("%:t")
    vim.fn.setreg("+", path)
    vim.notify("Copied Filename: " .. path)
end, { desc = "Copy filename" })

-- Buffers
map("n", "<leader>bN", "<cmd>enew<cr>", { desc = "new file (empty buffer)" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Windows
map("n", "<leader>wn", "<cmd>new<cr>",  { desc = "New empty horizontal split" })
map("n", "<leader>wv", "<cmd>vnew<cr>", { desc = "New empty vertical split" })

-- Tabs
map("n", "<leader>tN", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>tn", "<cmd>tabnext<cr>", { desc = "Next tab" })
map("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })

-- Terminal
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map("n", "<leader>tv", function()
  local width = math.floor(vim.o.columns * 0.3)
  vim.cmd("belowright " .. width .. "vsplit | terminal")
  vim.cmd("startinsert")
end, { desc = "open terminal vertical split" })

map("n", "<leader>th", function()
  local height = 12
  vim.cmd("belowright " .. height .. "split | terminal")
  vim.cmd("startinsert")
end, { desc = "open terminal horizontal split" })

-- Copilot
map('n', '<leader>ct', function()
  local copilot_client = require("copilot.client")
  if copilot_client.is_disabled() then
    require("copilot.command").enable()
    print("Copilot On")
  else
    require("copilot.command").disable()
    print("Copilot Off")
  end
end, { desc = "Toggle Copilot" })
