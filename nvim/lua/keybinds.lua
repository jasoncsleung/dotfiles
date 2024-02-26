-- Window Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- File Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
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
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dt", ":DapTerminate<CR>")
vim.keymap.set("n", "<leader>dn", ":DapStepOver<CR>")
vim.keymap.set("n", "<leader>di", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>do", ":DapStepOut<CR>")
-- Git
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>ga", ":Git add")
vim.keymap.set("n", "<leader>gd", ":vertical Git diff<CR>")
vim.keymap.set("n", "<leader>gs", ":Git status<CR>")
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
vim.keymap.set("n", "<leader>ps", ":Git push")
vim.keymap.set("n", "<leader>pl", ":Git pull<CR>")
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
-- Code Style Formatting
local conform = require("conform")
vim.keymap.set("n", "<leader>fm", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)
-- Linting
local lint = require("lint")
vim.keymap.set("n", "<leader>l", function()
	lint.try_lint()
end)
