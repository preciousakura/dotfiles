return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    priority = 800,
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- each open file is a tab
          diagnostics = "nvim_lsp",
          show_buffer_close_icons = true,
          show_close_icon = false,
          separator_style = "thin",
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },
        },
      })

      local map = vim.keymap.set
      map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next tab" })
      map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous tab" })
      map("n", "<leader>bP", "<cmd>BufferLinePick<cr>", { desc = "Pick tab" })
      map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", { desc = "Close other tabs" })
    end,
  },
}
