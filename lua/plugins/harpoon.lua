return {
  {
    "letieu/harpoon-lualine",
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      vim.keymap.set(
        "n",
        "<leader>a",
        function()
          harpoon:list():add()
        end,
        { desc = "Harpoon: Add to marks" }
      )

      vim.keymap.set(
        "n",
        "<leader>A",
        function()
          harpoon:list():clear()
        end,
        { desc = "Harpoon: Clear marks" }
      )


      vim.keymap.set(
        "n",
        "<leader>h",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        { desc = "Harpoon: Quick menu" }
      )

      local harpoonKeys = { "<C-a>", "<C-s>", "<C-c>", "<C-q>", "C-f" }

       for i = 1, 5 do
        vim.keymap.set(
          "n",
          "<leader>" .. harpoonKeys[i],
          function()
            harpoon:list():replace_at(i)
          end,
          { desc = "Harpoon Replace File " .. i, }
        )
        vim.keymap.set(
          "n",
          harpoonKeys[i],
          function()
            harpoon:list():select(i)
          end,
          { desc = "Harpoon Add File " .. i, }
        )
      end

    end,
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
  },
}
