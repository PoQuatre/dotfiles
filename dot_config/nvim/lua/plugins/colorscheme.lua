return {
  {
    "catppuccin",
    opts = function(_, opts)
      opts.transparent_background = true
      return opts
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.colorscheme = "catppuccin"
      return opts
    end,
  },

  {
    "lualine.nvim",
    opts = function(_, opts)
      require("lazy.status").updates()
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        -- theme = "catppuccin",
        component_separators = "|",
        section_separators = "",
        globalstatus = true,
      })

      local icons = LazyVim.config.icons
      opts.sections = vim.tbl_deep_extend("force", opts.sections or {}, {
        lualine_c = {
          LazyVim.lualine.root_dir({ icon = "󱉭" }),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path(), padding = { left = 0 } },
        },
      })

      opts.tabline = {}

      return opts
    end,
  },
}
