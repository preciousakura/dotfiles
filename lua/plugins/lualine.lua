return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    priority = 900,
    config = function()
      vim.opt.termguicolors = true
      require("lualine").setup({
        options = {
          theme = "auto", 
          globalstatus = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "│", right = "│" },
          disabled_filetypes = { "alpha", "dashboard" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {
            {
              "branch",
              icon = "", -- git icon
            },
            "diff",
          },
          lualine_c = {
            {
              "filename",
              path = 1,
            },
          },
          lualine_x = {
            "diagnostics",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
}

