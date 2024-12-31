return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local config = require("fzf-lua.config")
    local actions = require("fzf-lua.actions")
    require("fzf-lua").setup({
      fzf_colors = true,
      fzf_opts = {
        ["--no-scrollbar"] = true,
      },
      defaults = {
        -- formatter = "path.filename_first",
        formatter = "path.dirname_first",
      },
      winopts = {
        width = 0.8,
        height = 0.8,
        row = 0.5,
        col = 0.5,
        preview = {
          scrollchars = { "┃", "" },
        },
      },
      files = {
        cwd_prompt = false,
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-h"] = { actions.toggle_hidden },
        },
      },
      grep = {
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-h"] = { actions.toggle_hidden },
        },
      },
      vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { silent = true, desc = "Find Files (Root Dir)"}),
      vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua git_files<CR>", { silent = true, desc = "Find Files (git files)"}),
      vim.keymap.set("n", "<leader><space>", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", { silent = true, desc = "Buffers"}),
      vim.keymap.set("n", "<leader>/", "<cmd>FzfLua live_grep<cr>", { silent = true, desc = "Grep (Root Dir)"}),
    })
  end
}
