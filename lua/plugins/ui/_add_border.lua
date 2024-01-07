-- Set border of some LazyVim plugins to rounded
local BORDER = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

local PLUGINS = {}

PLUGINS.cmp = {
  "nvim-cmp",
  opts = function(_, opts)
    local bordered = require("cmp.config.window").bordered
    opts.window = {
      completion = bordered(BORDER),
      documentation = bordered(BORDER),
    }
    opts.window.completion.scrollbar = false
  end,
}

PLUGINS.which_key = {
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

PLUGINS.nvim_lsponfig = {
  "nvim-lspconfig",
  opts = function(_, opts)
    -- Set LspInfo border
    require("lspconfig.ui.windows").default_options.border = BORDER
  end,
}

PLUGINS.none_ls = {
  "none-ls.nvim",
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

PLUGINS.dropbar = {
  "Bekaboo/dropbar.nvim",
  opts = function(_, opts)
    require("dropbar").setup({
      menu = {
        win_configs = {
          border = BORDER,
        },
      },
    })
  end,
}

return {
  -- PLUGINS.cmp,
  PLUGINS.which_key,
  PLUGINS.gitsigns,
  PLUGINS.nvim_lsponfig,
  -- PLUGINS.none_ls,
  PLUGINS.mason,
  PLUGINS.noice,
  PLUGINS.dropbar,
}
