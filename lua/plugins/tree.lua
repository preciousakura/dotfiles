return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
      --cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" }, 
      keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Tree" },
        { "<leader>o", "<cmd>NvimTreeFocus<cr>", desc = "Focus Tree" },
        { "<leader>f", "<cmd>NvimTreeFindFile<cr>", desc = "Find file in Tree" },
      },
      config = function()
      require("nvim-tree").setup({
        disable_netrw = true,
        hijack_netrw = true,
        view = {
          width = 32,
          side = "left",
        },
        renderer = {
          indent_markers = { enable = true },
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        filters = {
        },
        git = {
          enable = true,
          ignore = false,
        },
        tab = {
          sync = {
            open = true,
            close = true
          }
        }
      })
    end,
  },
}
