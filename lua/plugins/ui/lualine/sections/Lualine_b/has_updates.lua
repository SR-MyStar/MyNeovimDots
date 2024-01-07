local Util = require("lazyvim.util")

return {
  require("lazy.status").updates,
  cond = require("lazy.status").has_updates,
  color = Util.ui.fg("Special"),
}
