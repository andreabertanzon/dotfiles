return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent_background = true
      opts.italic_comments = true
      opts.borderless_telescope = false
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "catppuccin/nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
