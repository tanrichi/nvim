return {
  "ThePrimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Mark File" })
    -- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon Menu" })
    vim.keymap.set("n", "<C-s>", ui.nav_next, { desc = "Harpoon: navigate to next mark" })

    vim.keymap.set("n", "<C-t>", function()
      ui.nav_file(1)
    end, { desc = "Go to Harpoon File 1" })
    vim.keymap.set("n", "<C-v>", function()
      ui.nav_file(2)
    end, { desc = "Go to Harpoon File 2" })
  end,
}
