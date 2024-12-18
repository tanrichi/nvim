return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = {
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = "/home/richi/.nvm/versions/node/v20.18.0/lib/node_modules/@vue/language-server",
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
