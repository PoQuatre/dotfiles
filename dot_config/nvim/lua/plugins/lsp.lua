return {
	"neovim/nvim-lspconfig",
	opts = function(_, opts)
		local ret = vim.tbl_deep_extend("force", opts, {
			inlay_hints = { enabled = false },
			servers = {
				clangd = {
					cmd = {
						"clangd",
						-- "--header-insertion=iwyu",
						"--header-insertion=never",
						-- "--background-index",
						-- "--suggest-missing-includes",
					},
				},
			},
		})
		return ret
	end,
}
