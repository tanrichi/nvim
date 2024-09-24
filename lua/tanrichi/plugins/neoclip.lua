return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    { "kkharji/sqlite.lua", module = "sqlite" },
    { "nvim-telescope/telescope.nvim" },
    { "ibhagwan/fzf-lua" },
  },
  config = function()
    require("neoclip").setup()
    vim.keymap.set("n", "<leader>o", "<cmd>Telescope neoclip<CR>", { desc = "Telescope Neoclip" })
  end,
}
