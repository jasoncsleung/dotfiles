-- File Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
-- Search
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- Debugging
vim.keymap.set("n", "<leader>b", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<F5>", ":DapContinue<CR>")
vim.keymap.set("n", "<F6>", ":DapTerminate<CR>")
vim.keymap.set("n", "<F10>", ":DapStepOver<CR>")
vim.keymap.set("n", "<F11>", ":DapStepInto<CR>")
vim.keymap.set("n", "<F12>", ":DapStepOut<CR>")
-- Git
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
-- Formatting
  vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
