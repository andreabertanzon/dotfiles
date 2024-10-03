return {
	{
		--"folke/tokyonight.nvim",
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				style = "mocha",
				transparent_background = true,
				on_colors = function(colors) end,
			})
			--local bg_transparent = true

			--local toggle_transparency = function()
			--    bg_transparent = not bg_transparent
			--    vim
			--end
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
