return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  config = function()
    require("toggleterm").setup({
      direction = "float",
      -- open_mapping = [[<c-\>]],
    })
  end,
}
