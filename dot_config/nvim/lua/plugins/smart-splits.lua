return {
	"mrjones2014/smart-splits.nvim",

	opts = {
		at_edge = "stop",
		float_win_behavior = "mux",
	},

	keys = {
		{ "<c-h>", function() require("smart-splits").move_cursor_left() end },
		{ "<c-j>", function() require("smart-splits").move_cursor_down() end },
		{ "<c-k>", function() require("smart-splits").move_cursor_up() end },
		{ "<c-l>", function() require("smart-splits").move_cursor_right() end },

		{ "<s-Left>", function() require("smart-splits").resize_left() end },
		{ "<s-Down>", function() require("smart-splits").resize_down() end },
		{ "<s-Up>", function() require("smart-splits").resize_up() end },
		{ "<s-Right>", function() require("smart-splits").resize_right() end },
	},
}
