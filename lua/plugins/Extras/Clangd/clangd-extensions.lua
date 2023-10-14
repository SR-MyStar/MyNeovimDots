return {
    "p00f/clangd_extensions.nvim",
    lazy = true,
    config = function() end,
    opts = function(_, opts)
        opts.inlay_hints.inline = vim.fn.has("nvim-0.10") == 1
        -- Options other than `highlight' and `priority' only work
        -- if `inline' is disabled
        -- Only show inlay hints for the current line
        opts.inlay_hints.only_current_line = false
    end,
    ast = {
        role_icons = require("models.ICONS").clangdAst.role_icons,
    },
}
