vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Select all
vim.keymap.set("n", "==", "gg<S-v>G")

-- close buffer
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", { desc = "Close Buffer" })

-- Replace word under cursor across entire buffer
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word under cursor" }
)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Remap Escape key
vim.api.nvim_set_keymap('i', ';;', '<Esc>', { noremap = true, silent = true })
