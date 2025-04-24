return {
	"stevearc/oil.nvim",
	dependencies = { { "echasnovski/mini.icons", opts = {} } },

	opts = {
		float = {
			max_height = 0.8,
			max_width = 0.8,
		},
	},

	cmd = "Oil",

	keys = {
		{ "-", "<cmd>Oil --float<cr>" },
	},
}
