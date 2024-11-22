-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.zenmode = false

LazyVim.toggle.map(
  "<leader>uz",
  LazyVim.toggle.wrap({
    name = "Zen mode",
    get = function()
      return vim.g.zenmode
    end,
    set = function(state)
      vim.cmd("Gitsigns toggle_signs " .. tostring(not state))
      LazyVim.toggle.diagnostics.set(not state)
      LazyVim.toggle.inlay_hints.set(not state)
      if state then
        vim.opt.showtabline = 0
        vim.cmd("ScrollbarHide")
      else
        vim.opt.showtabline = 99999
        vim.cmd("ScrollbarShow")
      end
      vim.g.zenmode = not vim.g.zenmode
    end,
  })
)
