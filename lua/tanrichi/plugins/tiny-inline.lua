return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  config = function()
    require("tiny-inline-diagnostic").setup({
      show_source = true,
      multiple_diag_under_cursor = true,
      multilines = true,
      throttle = 0,
    })
  end,
}
