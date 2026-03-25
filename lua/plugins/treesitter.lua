return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  }
}
