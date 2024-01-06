local ICONS = require(require("_env").fm_ICONS)
local TELESCOPE = {}

TELESCOPE.option = {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    event = "VeryLazy",
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["<esc>"] = require("telescope.actions").close,
                },
            },
            theme = "dropdown",
            layout_strategy = "center",
            layout_config = {
                width = 0.7,
                height = 0.8,
                prompt_position = "top",
            },
            sorting_strategy = "ascending",
            prompt_prefix = "  ",
            border = true,
            results_title = false,
            preview = false,
            borderchars = {
                prompt = {
                    "─",
                    "│",
                    " ",
                    "│",
                    "╭",
                    "╮",
                    "│",
                    "│",
                },
                results = {
                    "─",
                    "│",
                    "─",
                    "│",
                    "├",
                    "┤",
                    "╯",
                    "╰",
                },
                preview = {
                    "─",
                    "│",
                    "─",
                    "│",
                    "╭",
                    "╮",
                    "╯",
                    "╰",
                },
            },
        },
        pickers = ICONS.Telescope,
    },
    keys = function(_, keys)
        keys = vim.list_extend(keys, {
            {
                "<leader>fi",
                function()
                    require("telescope.builtin").builtin()
                end,
                desc = "Find Builtin",
            },
            {
                "<leader>i",
                "<leader>fi",
                desc = "Find Builtin",
                remap = true,
            },
        })
    end,
}

TELESCOPE.recent_files = {
    "smartpde/telescope-recent-files",
    event = "VeryLazy",
    config = function()
        require("telescope").setup({
            extensions = {
                recent_files = {
                    only_cwd = true,
                },
            },
        })
        require("telescope").load_extension("recent_files")
    end,
}

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.telescope = true
        end,
    },
    TELESCOPE.option,
    TELESCOPE.recent_files,
    TELESCOPE.file_browser,
}
