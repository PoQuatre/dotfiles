return {
  "telescope.nvim",

  opts = function(_, opts)
    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      oldfiles = {
        cwd_only = true,
      },
    })

    return opts
  end,
}
