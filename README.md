![231224_07h42m10s_screenshot](https://github.com/SR-MyStar/MyNeovimDots/assets/139795416/4cc0a02c-9d84-47ee-a3d0-d320c3a4db53)
![231224_07h42m48s_screenshot](https://github.com/SR-MyStar/MyNeovimDots/assets/139795416/851f8c8e-ec93-465c-976a-c3ff0aeae134)
# File Tree (Updated: 2024-01-02 22:59)
```
.
├──.gitignore
├──.luarc.json
├──.neoconf.json
├──init.lua
├──lazy-lock.json
├──lazyvim.json
├──neoconf.json
├──README.md
├──stylua.toml
└──lua
   ├──_env.lua
   ├──ICONS.lua
   ├──config
   │  ├──autocmds
   │  │  ├──c.lua
   │  │  ├──cpp.lua
   │  │  ├──run_file
   │  │  │  ├──run_c_file.lua
   │  │  │  ├──run_cpp_file.lua
   │  │  │  └──run_rust_file.lua
   │  │  ├──rust.lua
   │  │  └──test_file
   │  │     └──test_rust_file.lua
   │  ├──autocmds.lua
   │  ├──keymaps
   │  │  ├──goto.lua
   │  │  ├──lazy_and_yazi.lua
   │  │  └──terminal.lua
   │  ├──keymaps.lua
   │  ├──lazy.lua
   │  ├──options
   │  │  ├──disable_relativenumber.lua
   │  │  ├──neovide.lua
   │  │  └──tabs.lua
   │  └──options.lua
   └──plugins
      ├──_disabled_plugins.lua
      ├──_load_dirs.lua
      ├──Coding
      │  ├──asyncrun.lua
      │  ├──luasnip.lua
      │  ├──mini_pairs.lua
      │  ├──nvim-cmp.lua
      │  ├──nvim-surround.lua
      │  └──vim-visual-multi.lua
      ├──Editor
      │  ├──cellular-automaton.lua
      │  ├──flash.lua
      │  ├──markdown-preview.lua
      │  ├──neo-tree.lua
      │  ├──nvim-bqt.lua
      │  ├──telescope.lua
      │  ├──todo-comments.lua
      │  └──trouble.lua
      ├──Extras
      │  ├──_load_extras.lua
      │  ├──Alpha
      │  │  ├──_load.lua
      │  │  └──alpha-nvim.lua
      │  ├──Clangd
      │  │  ├──_load.lua
      │  │  ├──clangd-extensions.lua
      │  │  ├──conform.lua
      │  │  ├──mason.lua
      │  │  └──none-ls.lua
      │  ├──Dot
      │  │  ├──_load.lua
      │  │  └──nvim-treesitter.lua
      │  ├──None-ls
      │  │  └──_load.lua
      │  └──Rust
      │     ├──_load.lua
      │     └──rust-tools.lua
      ├──LSP
      │  ├──conform.lua
      │  ├──mason.lua
      │  ├──none.lua
      │  └──nvim-lspconfig.lua
      ├──TreeSitter
      │  ├──nvim-ts-context-commentstring.lua
      │  └──treesj.lua
      └──UI
         ├──_add_border.lua
         ├──_set_icons.lua
         ├──bufferline.lua
         ├──colorizer.lua
         ├──Colorscheme
         │  ├──_set_colorscheme.lua
         │  └──catppuccin.lua
         ├──dashboard-nvim.lua
         ├──dropbar.lua
         ├──lualine
         │  ├──extensions.lua
         │  ├──options.lua
         │  ├──sections.lua
         │  ├──Sections
         │  │  ├──Lualine_a
         │  │  │  └──mode.lua
         │  │  ├──lualine_a.lua
         │  │  ├──Lualine_b
         │  │  │  └──Noice
         │  │  │     ├──dap.lua
         │  │  │     ├──noice_1.lua
         │  │  │     ├──noice_2.lua
         │  │  │     └──requires.lua
         │  │  ├──lualine_b.lua
         │  │  ├──  Lualine_c
         │  │  ├──lualine_c.lua
         │  │  ├──Lualine_x
         │  │  │  └──codeium.lua
         │  │  ├──lualine_x.lua
         │  │  ├──Lualine_y
         │  │  │  └──line.lua
         │  │  ├──lualine_y.lua
         │  │  ├──  Lualine_z
         │  │  └──lualine_z.lua
         │  ├──tabline.lua
         │  ├──Tabline
         │  │  ├──Lualine_a
         │  │  │  └──buffers.lua
         │  │  ├──lualine_a.lua
         │  │  ├──Lualine_b
         │  │  │  ├──encoding.lua
         │  │  │  ├──fileformat.lua
         │  │  │  └──filename.lua
         │  │  ├──lualine_b.lua
         │  │  ├──Lualine_c
         │  │  │  └──diagnostics.lua
         │  │  ├──lualine_c.lua
         │  │  ├──Lualine_x
         │  │  │  └──diff.lua
         │  │  ├──lualine_x.lua
         │  │  ├──Lualine_y
         │  │  │  └──branch.lua
         │  │  ├──lualine_y.lua
         │  │  ├──Lualine_z
         │  │  │  └──tabs.lua
         │  │  └──lualine_z.lua
         │  ├──winbar.lua
         │  └──Winbar
         │     ├──  Lualine_a
         │     ├──lualine_a.lua
         │     ├──  Lualine_b
         │     ├──lualine_b.lua
         │     ├──Lualine_c
         │     │  └──Nvim-navic
         │     │     ├──array.lua
         │     │     ├──filetype.lua
         │     │     └──nvim-navic.lua
         │     ├──lualine_c.lua
         │     ├──lualine_d.lua
         │     ├──Lualine_x
         │     │  ├──diagnostics.lua
         │     │  └──diff.lua
         │     ├──lualine_x.lua
         │     ├──  Lualine_y
         │     ├──lualine_y.lua
         │     ├──  Lualine_z
         │     └──lualine_z.lua
         ├──lualine.lua
         ├──noice.lua
         ├──nvim-navic.lua
         └──which-key.lua
```
