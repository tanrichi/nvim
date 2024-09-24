# My Neovim Configs

## Plugin List

### General

- lazy.nvim
- tokyonight.nvim
- alpha-nvim

### Utils

- lazygit.nvim
- autosessions
- vim-tmux-navigator
- vim-maximizer
- toggleterm.nvim
- bufferline.nvim
- lualine.nvim
- which-key.nvim

### Text Edition, LSPs, Linting, Formatting, Snippets

- nvim-treesitter
- mason.nvim
- nvim-lspconfig
- nvim-cmp
- nvim-lint
- nvim-autopairs
- substitute.nvim
- indent-blankline.nvim
- Comment.nvim
- todo-comments.nvim
- trouble.nvim
- nvim-surround

### Telescope and Extensions

- telescope.nvim
- telescope-undo.nvim
- telescope-file-browser.nvim
- telescope-all-recent.nvim
- nvim-neoclip
- harpoon
- dressing.nvim

### Preconfigured LSPs

- css_lsp (cssls)
- emmet-ls (graphql)
- html-lsp (html)
- lua-language-server (lua_ls)
- typescript-language-server (ts_ls)
- vue-language-server (volar)
- tailwindcss-language-server (tailwindcss)

### Preconfigured Linter and Formatter

- eslint_d
- prettier
- stylelua

## Mappings

### `auto-session`

- `<leader>wr` Restore a saved session
- `<leader>ws` Save a session

### `toggleterm.nvim`

- `<C-\>` Toggle Terminal

### `Text Edition`

#### `nvim-treesitter`

- `<C-space>` Select child of treesitter
- `<C-space>` Increment selection
- `<bs>` Deincrement selection

#### `nvim-lspconfig`

- `<gr>` Show references
- `<gd>` Show definitions
- `<gD>` Show declarations
- `<gi>` Show implementations
- `<gt>` Show type definitions
- `<leader>ca` Show code actions
- `<rn>` Smart rename
- `<leader>D` Show diagnostics
- `<leader>d` Show line diagnostics
- `[d` Go to previous diagnostic in buffer
- `]d` Go to next diagnostic in buffer
- `K` Show documentation over cursor
- `<leader>rs` Restart LSP

#### `nvim-cmp`

- `<C-k>` Previous suggestion
- `<C-j>` Next suggestion
- `<C-b>` Scroll documentation backward
- `<C-f>` Scroll documentation forward
- `<C-space>` Show completion suggestions
- `<C-e>` Abort
- `<CR>` Confirm selected suggestion
- `<Tab>` Confirm the first suggestion
- `<leader>l` Lint current buffer

#### `substitute.nvim`

- `s` Substitute with motion
- `ss` Substitute line
- `S` Substitute to end of line

#### `Comment.nvim`

- `gcc` Toggle comment line in normal mode
- `gcb` Toggle comment block in normal mode
- `gc` Toggle comment line in visual mode
- `gc` Toggle comment block in visual mode

#### `todo-comments.nvim`

- `<leader>ft` Find TODOs
- `[d` Go to previous TODO
- `]d` Go to next TODO

#### `trouble.nvim`

- `<leader>xw` Open Trouble workspace diagnostics
- `<leader>xb` Open Trouble current buffer diagnostics
- `<leader>xq` Open Trouble quickfix list
- `<leader>xl` Open Trouble location list
- `<leader>xt` Open TODOS in Trouble

#### `nvim-surround`

- `ys{motion}{char}` Add around selection
- `ds{char}` Delete around selection
- `cs{target}{replacement}` Change around selection

---

    Old text                    Command         New text
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

#### `telescope.nvim`

- `<leader>ff` Fuzzy find files
- `<leader>fr` Fuzzy find recent files
- `<leader>fe` Fuzzy find hidden files
- `<leader>fg` Fuzzy find string
- `<leader><space>` Find buffers
- `<leader>fb` File browser
- `<leader>u` Undo History
- `<leader>o` Yank History
- `<leader>o` Yank History
- `<leader>fk` Fuzzy find keymaps
- `<leader>/` Fuzzy find string in current buffer
- `<leader>/` Fuzzy find string in current buffer
- `<leader>ft` Find TODOs

#### `harpoon`

- `<C-e>` Show Harpoon marks
- `<leader>a` Add mark to Harpoon
- `<C-s>` Go to next Harpoon mark
- `<C-t>` Go to first Harpoon mark
- `<C-v>` Go to second Harpoon mark
