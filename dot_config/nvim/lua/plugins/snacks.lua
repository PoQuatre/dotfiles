return {
	"folke/snacks.nvim",

	opts = {
		explorer = {
			replace_netrw = false,
		},

		indent = {
			indent = { char = "▏" },
			scope = { char = "▏" },
		},

		picker = {
			sources = {
				explorer = {
					layout = {
						preview = false,
						layout = {
							backdrop = false,
							width = 40,
							min_width = 40,
							height = 0,
							position = "right",
							border = "none",
							box = "vertical",
							{
								win = "input",
								height = 1,
								border = "bottom",
								title = "{title} {live} {flags}",
								title_pos = "center",
							},
							{ win = "list", border = "none" },
						},
					},
				},
			},
		},
	},
}
