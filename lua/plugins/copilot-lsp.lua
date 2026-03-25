return {
  {
    "copilotlsp-nvim/copilot-lsp",
    dependencies = { "zbirenbaum/copilot.lua" },
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false }, 
        panel = { enabled = false },
      })
      require("copilot-lsp").setup({
        nes = {
          enabled = true,
          debounce = 500,
          keymap = {
            accept_and_goto = "<leader>p",
            dismiss = "<Esc>",
          },
        },
      })
    end,
  },
}
