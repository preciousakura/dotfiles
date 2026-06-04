return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "python",
        "typescript",
        "tsx",
        "javascript",
        "json",
        "html",
        "css",
        "lua",
      },
      highlight = { enable = true },
      indent = { enable = true },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  }
}
