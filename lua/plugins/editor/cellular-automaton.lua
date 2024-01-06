require("which-key").register({
    name = "+cellular-automaton",
}, { mode = "n", prefix = "<leader>r" })

return {
    "Eandrju/cellular-automaton.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = {
        {
            "<leader>rm",
            "<cmd>CellularAutomaton make_it_rain<cr>",
            desc = "Make it rain",
        },
        {
            "<leader>rg",
            "<cmd>CellularAutomaton game_of_life<cr>",
            desc = "Game of life",
        },
        {
            "<leader>rs",
            "<cmd>CellularAutomaton scramble<cr>",
            desc = "Scramble",
        },
    },
}
