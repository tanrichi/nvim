return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    local copilot = require("copilot")

    -- Open the panel in insert mode
    vim.api.nvim_set_keymap("i", "<M-\\>", "<cmd>Copilot panel<CR>", { noremap = true, silent = true })

    copilot.setup({
      suggestion = {
        enabled = false,
      },
      panel = {
        enabled = true,
        autorefresh = true,
      },
    })
  end,
}
