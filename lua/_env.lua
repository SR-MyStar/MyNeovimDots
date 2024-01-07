-- ┌────────────────────────┐
-- │ d  - directory         │
-- │ dm - directory module  │
-- │ pd - plugins directory │
-- │ ed - extras directory  │
-- │ fm - file module       │
-- │ sm - string module     │
-- │ f  - function          │
-- └────────────────────────┘
local env = {
  f_split_filename = function(file)
    return {
      name = file:match("(.+)%."),
      extension = file:match(".+%.(%w+)$"),
    }
  end,
  d_config = "config",
  d_global_keymaps = "config.keymaps",
  d_autocmds = "config.autocmds",
  d_options = "config.options",
  d_plugins = "plugins",
  d_extras = "plugins.extras_config",
  ed = {},
  fm_ICONS = "ICONS",

  sm_asyncrun_args = "-mode=term -pos=bottom -rows=20",
}

env.pd_coding = env.d_plugins .. ".coding"
env.pd_editor = env.d_plugins .. ".editor"
env.pd_lsp = env.d_plugins .. ".lsp"
env.pd_treesitter = env.d_plugins .. ".treesitter"
env.pd_ui = env.d_plugins .. ".ui"
env.pd_colorscheme = env.d_plugins .. ".ui.colorscheme"

env.ed.coding = env.d_extras .. ".coding"
env.ed.dap = env.d_extras .. ".dap"
env.ed.editor = env.d_extras .. ".editor"
env.ed.lang = env.d_extras .. ".lang"
env.ed.lsp = env.d_extras .. ".lsp"
env.ed.test = env.d_extras .. ".test"
env.ed.ui = env.d_extras .. ".ui"
env.ed.util = env.d_extras .. ".util"

env.dm_runFile = env.d_autocmds .. ".run_file"
env.dm_testFile = env.d_autocmds .. ".test_file"

env.dm_Lualine = env.pd_ui .. ".lualine"
env.dm_Lualine_Sections = env.dm_Lualine .. ".sections"
env.dm_Lualine_Tabline = env.dm_Lualine .. ".tabline"
env.dm_Lualine_Winbar = env.dm_Lualine .. ".winbar"

return env
