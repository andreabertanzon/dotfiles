local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local opts = {} -- your options for lazy.nvim here
require("lazy").setup({{import="abcode.plugins"}, {import="abcode.plugins.lsp"}},{
	checker = {
		enabled = true,
		notify = false,
	}
})
