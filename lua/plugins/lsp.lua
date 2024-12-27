return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      ts_ls = {
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = "/home/richi/.nvm/versions/node/v20.18.1/lib/node_modules/@vue/language-server",
              languages = { "javascript", "typescript", "vue" },
            },
          },
        },
        filetypes = { "typescript", "javascript", "vue" },
      },
      volar = {},
      vtsls = false,
    },
  },
}
