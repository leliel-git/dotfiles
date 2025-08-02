return {
	"abreujp/scholar.nvim",
	priority = 1000,
	config = function()
		require("scholar").setup({
			transparent_mode = true
		})
	end,
}
