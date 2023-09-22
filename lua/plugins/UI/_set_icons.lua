local ICONS = require("models.ICONS")

return {
  "LazyVim/LazyVim",
  opts = {
    icons = {
      dap = ICONS.dap,
      diagnostics = ICONS.diagnostics,
      git = ICONS.git,
      kinds = ICONS.kinds,
    },
  },
}
