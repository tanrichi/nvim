return {
  "zaldih/themery.nvim",
  config = function()
    require("themery").setup({
      -- globalbefore = [[ -- Executed before each.]],
      globalAfter = [[
        vim.opt.background = "dark"
      ]],
      themes = {
        {
          name = "Tokyonight (night)",
          colorscheme = "tokyonight-night",
        },
        {
          name = "Tokyonight (storm)",
          colorscheme = "tokyonight-storm",
        },
        {
          name = "Tokyonight (moon)",
          colorscheme = "tokyonight-moon",
        },
        {
          name = "Catppuccin (frappe)",
          colorscheme = "catppuccin-frappe",
        },
        {
          name = "Catppuccin (macchiato)",
          colorscheme = "catppuccin-macchiato",
        },
        {
          name = "Catppuccin (mocha)",
          colorscheme = "catppuccin-mocha",
        },
        {
          name = "Rose-pine (main)",
          colorscheme = "rose-pine",
          before = [[
            require("rose-pine").setup({
              variant = "main"
            })
          ]],
        },
        {
          name = "Rose-pine (moon)",
          colorscheme = "rose-pine",
          before = [[
            require("rose-pine").setup({
              variant = "moon"
            })
          ]],
        },
        {
          name = "Material (darker)",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "darker"
          ]],
        },
        {
          name = "Material (deep ocean)",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "deep ocean"
          ]],
        },
        {
          name = "Material (oceanic)",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "oceanic"
          ]],
        },
        {
          name = "Material (palenight)",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "palenight"
          ]],
        },
        {
          name = "Onedark (dark)",
          colorscheme = "onedark",
          before = [[
            require('onedark').setup {
              style = 'dark'
            }
          ]],
        },
        {
          name = "Onedark (darker)",
          colorscheme = "onedark",
          before = [[
            require('onedark').setup {
              style = 'darker'
            }
          ]],
        },
        {
          name = "Onedark (deep)",
          colorscheme = "onedark",
          before = [[
            require('onedark').setup {
              style = 'deep'
            }
          ]],
        },
        {
          name = "Onedark (warm)",
          colorscheme = "onedark",
          before = [[
            require('onedark').setup {
              style = 'warm'
            }
          ]],
        },
        {
          name = "Onedark (warmer)",
          colorscheme = "onedark",
          before = [[
            require('onedark').setup {
              style = 'warmer'
            }
          ]],
        },
        {
          name = "Sonokai (Default)",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "default"
            vim.g.sonokai_better_performance = 1
          ]],
        },
        {
          name = "Sonokai (Atlantis)",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "atlantis"
            vim.g.sonokai_better_performance = 1
          ]],
        },
        {
          name = "Sonokai (andromeda)",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "andromeda"
            vim.g.sonokai_better_performance = 1
          ]],
        },
        {
          name = "Sonokai (Shusia)",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "shusia"
            vim.g.sonokai_better_performance = 1
          ]],
        },
        {
          name = "Github (Dark)",
          colorscheme = "github_dark",
        },
        {
          name = "Github (Dark Default)",
          colorscheme = "github_dark_default",
        },
        {
          name = "Github (Dark Dimmed)",
          colorscheme = "github_dark_dimmed",
        },
        {
          name = "Github (Dark High Contrast)",
          colorscheme = "github_dark_high_contrast",
        },
        {
          name = "Kanagawa (wave)",
          colorscheme = "kanagawa-wave",
        },
        {
          name = "Kanagawa (dragon)",
          colorscheme = "kanagawa-dragon",
        },
        {
          name = "Kanagawa (lotus)",
          colorscheme = "kanagawa-lotus",
        },
      },
      livePreview = true,
    })
  end,
}
