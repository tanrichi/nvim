return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files()
			end, {})
			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep()
			end, {})
			vim.keymap.set("n", "<leader><space>", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>fe", function()
				builtin.find_files({ hidden = true, find_command = { "rg", "--files", "--glob", ".env*" } })
			end)

			vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
      vim.keymap.set("n", "<C-e>", ":Telescope harpoon marks<CR>")
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
					layout_config = { width = 0.7 },
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("harpoon")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
}
