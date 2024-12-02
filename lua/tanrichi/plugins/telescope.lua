return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")
      local transform_mod = require("telescope.actions.mt").transform_mod

      local trouble = require("trouble")
      local trouble_telescope = require("trouble.sources.telescope")

      local fb_actions = require("telescope").extensions.file_browser.actions

      -- or create your custom action
      local custom_actions = transform_mod({
        open_trouble_qflist = function(prompt_bufnr)
          trouble.toggle("quickfix")
        end,
      })

      telescope.setup({
        extensions = {
          undo = {},
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          file_browser = {
            -- hijack_netrw = true,
          },
        },
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
              ["<C-t>"] = trouble_telescope.open,
            },
          },
        },
      })

      telescope.load_extension("ui-select")
      telescope.load_extension("projects")
      telescope.load_extension("file_browser")
      telescope.load_extension("neoclip")
      telescope.load_extension("undo")

      local extensions = telescope.extensions

      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      -- Find files
      keymap.set("n", "<leader>ff", function()
        builtin.find_files()
      end, { desc = "Fuzzy find files in cwd" })

      -- Change Working Directory
      keymap.set("n", "<leader>fw", function()
        extensions.projects.projects()
      end, { desc = "Telescope: Change working director" })

      -- Find string
      keymap.set("n", "<leader>fg", function()
        builtin.live_grep()
      end, { desc = "Find string in cwd" })

      -- Find string
      keymap.set("n", "<leader>fm", function()
        builtin.marks()
      end, { desc = "Find marks" })

      -- Find buffers
      keymap.set("n", "<leader><space>", function()
        builtin.buffers()
      end, { desc = "Find buffers" })

      -- Folder Browser
      -- keymap.set("n", "<space>fb", function()
      --   require("telescope").extensions.file_browser.file_browser({
      --     path = "%:p:h",
      --     files = false,
      --     select_buffer = true,
      --     grouped = true,
      --     respect_gitignore = true,
      --   })
      -- end, { desc = "Open Folder browser" })

      -- Undo History
      keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "Open Undo History" })

      -- Find Key Maps
      keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Show Keymaps" })

      -- Fuzzily Search in current buffer
      keymap.set("n", "<leader>/", function()
        require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
          layout_config = { width = 0.7 },
        }))
      end, { desc = "[/] Fuzzily search in current buffer" })

      -- Find Harpoon Marks
      -- keymap.set("n", "<C-e>", ":Telescope harpoon marks<CR>", { desc = "Show Harpoon marks" })

      -- Find Help Tags
      keymap.set("n", "<leader>fh", function()
        builtin.help_tags()
      end, { desc = "Find Help Tags" })

      -- Find TODOs
      -- keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

      -- Find hidden files
      keymap.set("n", "<leader>fe", function()
        -- builtin.find_files({ hidden = true })
        -- rg,--ignore,--hidden,--files,-u
        builtin.find_files({ hidden = true, find_command = { "rg", "--ignore", "--hidden", "--files", "-u" } })
      end, { desc = "Find hidden files" })
    end,
  },
}
