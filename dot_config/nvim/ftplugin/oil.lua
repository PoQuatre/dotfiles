local buf = vim.api.nvim_get_current_buf()

vim.api.nvim_buf_set_keymap(buf, "n", "<esc><esc>", "<cmd>q<cr>", {})
