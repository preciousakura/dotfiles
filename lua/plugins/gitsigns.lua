return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 300,
        },
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "_" },
          topdelete = { text = "-" },
          changedelete = { text = "~" },
        },
      })

      vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame line" })
      vim.keymap.set("n", "<leader>gB", "<cmd>Gitsigns blame<CR>", { desc = "Git blame full file" })
      vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
      vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Git reset hunk" })
      vim.keymap.set("n", "]h", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next git hunk" })
      vim.keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous git hunk" })
    end,
  },
}
