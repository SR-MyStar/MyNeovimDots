local wk = require("which-key")
local env = require("_env")

local function require_global_keymaps(file)
    local function load_keymap(keymap_raw_table)
        if type(keymap_raw_table[1]) ~= "table" then
            wk.register(keymap_raw_table.keys, keymap_raw_table.opts)
            return
        end
        for _, keymap_table in ipairs(keymap_raw_table) do
            load_keymap(keymap_table)
        end
    end

    if file.extension == "lua" and file.name:sub(1, 1) ~= "_" then
        local keymap_raw_table =
            require(env.d_global_keymaps .. "." .. file.name)
        load_keymap(keymap_raw_table)
    end
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.which_key = true
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.plugins = vim.list_extend(opts.plugins, { spelling = true })
            for _, file in
                pairs(
                    vim.fn.readdir(
                        vim.fn.stdpath("config")
                            .. "/lua/"
                            .. string.gsub(env.d_global_keymaps, "%.", "/")
                    )
                )
            do
                require_global_keymaps(env.f_split_filename(file))
            end
        end,
    },
}
