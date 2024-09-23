return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themes = { "tokyonight-night", "catppuccin", "kanagawa", },
			livePreview = true,
		})
	end,
}
