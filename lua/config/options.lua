vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum} "
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.splitbelow = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 400
vim.opt.fillchars = { eob = " " }


local function apply_gutter_off()
  vim.wo.number = false
  vim.wo.relativenumber = false
  vim.wo.statuscolumn = "" 
  vim.wo.signcolumn = "no"
  vim.wo.foldcolumn = "0"
end

vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter", "WinEnter" }, {
  callback = function()
    if vim.bo.filetype == "NvimTree" then
      apply_gutter_off()
    end
  end,
})
