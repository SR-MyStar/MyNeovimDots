local env = require("_env")

return {
  "LazyVim/LazyVim",
  { import = env.pd_ui },
  { import = env.pd_lsp },
  { import = env.pd_coding },
  { import = env.pd_editor },
  { import = env.pd_treesitter },
  { import = env.pd_colorscheme },
}
