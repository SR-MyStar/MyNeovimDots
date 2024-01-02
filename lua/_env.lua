-- ┌───────────────────────┐
-- │ d  - directory        │
-- │ dm - directory module │
-- │ fm - file module      │
-- │ sm - string module    │
-- │ f  - function         │
-- └───────────────────────┘
local env               = {
    f_split_filename = function(file)
        return {
            name = file:match("(.+)%."),
            extension = file:match(".+%.(%w+)$"),
        }
    end,
    d_config         = "config",
    d_global_keymaps = "config.keymaps",
    d_autocmds       = "config.autocmds",
    d_options        = "config.options",
    d_modules        = "models",
    d_neovide        = "neovide",
    d_plugins        = "plugins",
    d_Coding         = "plugins.Coding",
    d_Editor         = "plugins.Editor",
    d_Extras         = "plugins.Extras",
    d_LSP            = "plugins.LSP",
    d_Treesitter     = "plugins.Treesitter",
    d_UI             = "plugins.UI",
    d_Colorscheme    = "plugins.UI.Colorscheme",

    dm_Lualine       = "plugins.UI.lualine",
    fm_ICONS         = "ICONS",

    sm_asyncrunArgs  = "-mode=term -pos=bottom -rows=15"
}
env.dm_runFile          = env.d_autocmds .. ".run_file"
env.dm_testFile         = env.d_autocmds .. ".test_file"

env.dm_Lualine_Sections = env.dm_Lualine .. ".Sections"
env.dm_Lualine_Tabline  = env.dm_Lualine .. ".Tabline"
env.dm_Lualine_Winbar   = env.dm_Lualine .. ".Winbar"

return env
