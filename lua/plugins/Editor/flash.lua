local keymaps = {}

keymaps.Flash = {
    "s",
    mode = { "n", "x", "o" },
    function()
        require("flash").jump()
    end,
    desc = "Flash",
}

keymaps.Flash_Treesitter = {
    "S",
    mode = { "n", "o", "x" },
    function()
        require("flash").treesitter()
    end,
    desc = "Flash Treesitter",
}

keymaps.Remote_Flash = {
    "r",
    mode = "o",
    function()
        require("flash").remote()
    end,
    desc = "Remote Flash",
}

keymaps.Treesitter_Search = {
    "R",
    mode = { "o", "x" },
    function()
        require("flash").treesitter_search()
    end,
    desc = "Treesitter Search",
}

keymaps.Toggle_Flash_Search = {
    "<c-s>",
    mode = { "c" },
    function()
        require("flash").toggle()
    end,
    desc = "Toggle Flash Search",
}

keymaps.Jump_To_A_Line = {
    ";",
    mode = { "n", "x", "o" },
    function()
        local col = vim.api.nvim_win_get_cursor(0)[2]
        require("flash").jump({
            jump = { offset = col },
            search = { mode = "search", max_length = 0 },
            label = { after = { 0, col } },
            highlight = { matches = false },
            pattern = "^",
        })
    end,
    desc = "Jump To A Line",
}

return {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    ---@type Flash.Config
    opts = function(_, opts)
        opts.highlight = { backdrop = false }
        opts.labels = "jkl;asdfgh'iowequytrq"
        return opts
    end,
    modes = function(_, modes)
        modes.char.jump_labels = true
    end,
    keys = {
        keymaps.Flash,
        keymaps.Flash_Treesitter,
        keymaps.Remote_Flash,
        keymaps.Treesitter_Search,
        keymaps.Toggle_Flash_Search,
        keymaps.Jump_To_A_Line,
    },
}
