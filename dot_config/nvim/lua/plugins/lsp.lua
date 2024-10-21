return {
  {
    "nvim-lspconfig",

    opts = function(_, opts)
      opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
        emmet_language_server = {
          filetypes = vim.list_extend(
            { "templ" },
            require("lspconfig/configs/emmet_language_server").default_config.filetypes
          ),
        },
        templ = {},
        htmx = {},
        clangd = {
          cmd = { "clangd", "--header-insertion=never" },
        },
      })

      return opts
    end,
  },

  {
    "nvim-lint",
    opts = function(_, opts)
      opts.linters.sqlfluff = {
        args = { "lint", "--format=json" },
      }
    end,
  },

  {
    "conform.nvim",
    opts = function(_, opts)
      opts.formatters.sqlfluff = {
        args = { "format", "-" },
      }
    end,
  },
}
