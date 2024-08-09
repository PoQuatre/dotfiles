return {
  "mrjones2014/smart-splits.nvim",
  event = { "VimResized", "WinResized" },

  opts = {
    at_edge = "stop",
  },

  keys = {
    {
      "<c-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Go to left window",
    },
    {
      "<c-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Go to lower window",
    },
    {
      "<c-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Go to upper window",
    },
    {
      "<c-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Go to right window",
    },

    {
      "<s-left>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize window to the left",
    },
    {
      "<s-down>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize window down",
    },
    {
      "<s-up>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize window up",
    },
    {
      "<s-right>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize window to the right",
    },
  },
}
