return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        debounce = 75,
        keymap = {
          accept = "<M-m>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = false,
      },
    })

    vim.api.nvim_set_keymap(
      "n",
      "<leader>cc",
      "<cmd>lua require('copilot').complete()<CR>",
      { noremap = true, silent = true }
    )
  end,
}
