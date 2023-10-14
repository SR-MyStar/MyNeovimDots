local icons = require("lazyvim.config").icons

return {
    "diff",
    symbols = {
        added = icons.git.added,
        modified = icons.git.modified,
        removed = icons.git.removed,
    },
}
