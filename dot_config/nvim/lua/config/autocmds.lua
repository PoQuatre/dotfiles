-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local function augroup(name)
--   return vim.api.nvim_create_augroup("custom_" .. name, { clear = true })
-- end

-- -- Open all folds by default
-- vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
--   group = augroup("auto_unfold"),
--   pattern = "*",
--   command = "normal zR",
-- })
