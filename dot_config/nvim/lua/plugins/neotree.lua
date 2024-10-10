local function open_and_close_window(state)
  local success, node = pcall(state.tree.get_node, state.tree)
  if not (success and node) then
    return
  end

  require("neo-tree.sources.filesystem.commands").open(state)
  if not require("neo-tree.utils").is_expandable(node) then
    require("neo-tree.sources.common.commands").close_window(state)
  end
end

return {
  "neo-tree.nvim",
  opts = function(_, opts)
    opts.window = vim.tbl_deep_extend("force", opts.window or {}, {
      mappings = {
        ["<space>"] = "noop",
        ["<esc>"] = "close_window",

        ["l"] = "open",
        ["<right>"] = "open",
        ["<cr>"] = "open",

        ["h"] = "close_node",
        ["<left>"] = "close_node",
        ["<bs>"] = "close_node",
      },
    })

    opts.filesystem = vim.tbl_deep_extend("force", opts.filesystem or {}, {
      use_libuv_file_watcher = true,

      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          "node_modules",
        },
        never_show = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
      },

      window = {
        mappings = {
          ["l"] = open_and_close_window,
          ["<right>"] = open_and_close_window,
          ["<cr>"] = open_and_close_window,
        },
      },
    })

    return opts
  end,
}
