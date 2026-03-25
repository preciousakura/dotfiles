return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,    
    priority = 1000, 
    config = function()
      vim.opt.background = "dark"
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("oxocarbon")
    end,
  },
}

