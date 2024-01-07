local sections = require("_env").dm_Lualine_Sections

return {
  require(sections .. ".Lualine_b.status.command"),
  require(sections .. ".Lualine_b.status.mode"),
  require(sections .. ".Lualine_b.dap"),
  require(sections .. ".Lualine_b.has_updates"),
}
