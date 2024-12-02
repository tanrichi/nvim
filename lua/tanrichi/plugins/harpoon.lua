return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local conf = require("telescope.config").values

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Harpoon: Add to marks" })

    vim.keymap.set("n", "<leader>A", function()
      harpoon:list():clear()
    end, { desc = "Harpoon: Clear marks" })

    vim.keymap.set("n", "<C-e>", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Harpoon: Open marks window" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-n>", function()
      harpoon:list():prev()
    end, { desc = "Harpoon: Go to previous mark" })

    vim.keymap.set("n", "<C-m>", function()
      harpoon:list():next()
    end, { desc = "Harpoon: Go to next mark" })

    vim.keymap.set("n", "<C-a>", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: Go to mark 1 " })

    vim.keymap.set("n", "<C-s>", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: Go to mark 2 " })

    vim.keymap.set("n", "<C-c>", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: Go to mark 3 " })

    vim.keymap.set("n", "<C-q>", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: Go to mark 4 " })

    vim.keymap.set("n", "<C-f>", function()
      harpoon:list():select(5)
    end, { desc = "Harpoon: Go to mark 5 " })

    vim.keymap.set("n", "<leader><C-a>", function()
      harpoon:list():replace_at(1)
    end, { desc = "Harpoon: Replace mark 1 " })

    vim.keymap.set("n", "<leader><C-s>", function()
      harpoon:list():replace_at(2)
    end, { desc = "Harpoon: Replace mark 2 " })

    vim.keymap.set("n", "<leader><C-c>", function()
      harpoon:list():replace_at(3)
    end, { desc = "Harpoon: Replace mark 3 " })

    vim.keymap.set("n", "<leader><C-q>", function()
      harpoon:list():replace_at(4)
    end, { desc = "Harpoon: Replace mark 4 " })

    vim.keymap.set("n", "<leader><C-f>", function()
      harpoon:list():replace_at(5)
    end, { desc = "Harpoon: Replace mark 5 " })
  end,
}
