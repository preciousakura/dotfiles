return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        -- Add language formatters per branch (e.g. python = { "black" }).
      },
    })
  end,
}
