return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "json",
        "html",
        "css",
        "clojure",
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
