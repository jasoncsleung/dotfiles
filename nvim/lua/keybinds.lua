-- Window Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- File Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Terminal
vim.keymap.set("n", "<c-t>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<c-t>", "<C-l><CR>exit<CR>")
vim.keymap.set("t", "<c-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set("t", "<c-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set("t", "<c-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set("t", "<c-l>", [[<Cmd>wincmd k<CR>]])
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
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>ga", ":Git add")
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push")
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
-- Code Style Formatting
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
