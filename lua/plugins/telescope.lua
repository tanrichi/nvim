return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fe",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          find_command = { "rg", "--files", "--glob", ".env*" },
        })
      end,
      desc = "Find .env files",
    },
  },
}
