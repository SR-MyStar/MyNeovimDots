-- Set border of some LazyVim plugins to rounded
local BORDER = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }

local PLUGINS = {}

PLUGINS.cmp = {
  "nvim-cmp",
  opts = function(_, opts)
    local bordered = require("cmp.config.window").bordered
    return vim.tbl_deep_extend("force", opts, {
      window = {
        completion = bordered(BORDER),
        documentation = bordered(BORDER),
      },
    })
  end,
}

PLUGINS.whichKey = {
  "which-key.nvim",
  opts = {
    window = { border = BORDER },
  },
}

PLUGINS.gitsigns = {
  "gitsigns.nvim",
  opts = {
    preview_config = { border = BORDER },
  },
}

PLUGINS.nvimLsponfig = {
  "nvim-lspconfig",
  opts = function(_, opts)
    -- Set LspInfo border
    require("lspconfig.ui.windows").default_options.border = BORDER
    return opts
  end,
}

PLUGINS.nullLs = {
  "null-ls.nvim",
  opts = { border = BORDER },
}

PLUGINS.mason = {
  "mason.nvim",
  opts = {
    ui = { border = BORDER },
  },
}

PLUGINS.noice = {
  "noice.nvim",
  opts = {
    presets = { lsp_doc_border = true },
  },
}

return {
  PLUGINS.cmp,
  PLUGINS.whichKey,
  PLUGINS.gitsigns,
  PLUGINS.nvimLsponfig,
  PLUGINS.nullLs,
  PLUGINS.mason,
  PLUGINS.noice,
}
