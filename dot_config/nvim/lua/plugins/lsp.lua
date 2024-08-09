return {
  "nvim-lspconfig",

  opts = function(_, opts)
    opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
      emmet_language_server = {},
      templ = {},
      htmx = {},
    })

    return opts
  end,
}
