return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "lewis6991/gitsigns.nvim",
  },
  event = "LazyFile",

  opts = {
    hide_if_all_visibe = true,

    marks = {
      Search = { gui = "bold" },
      Error = { gui = "bold" },
      Warn = { gui = "bold" },
      Info = { gui = "bold" },
      Hint = { gui = "bold" },
      Misc = { gui = "bold" },
    },
  },

  config = function(_, opts)
    require("scrollbar").setup(opts)
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
