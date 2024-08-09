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
}
