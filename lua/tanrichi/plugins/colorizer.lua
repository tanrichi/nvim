return {
  "norcalli/nvim-colorizer.lua",

  config = function()
    require("colorizer").setup({
      -- options, see Configuration section below
      -- there are no required options atm
      -- engine = 'ripgrep' is default, but 'astgrep' can be specified
    })
  end,
}
