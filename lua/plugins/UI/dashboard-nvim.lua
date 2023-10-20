return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
        local icons = { "󰥺 ", "󱀺 ", " ", "󱀻 ", "󰧭 ", "󱙨 ", "󰷜 ", " ", "󰒲 ", " " }
        local logo = [[
              ██╗██╗  󰫢   󰫢   󰫢    ███████╗████████╗ █████╗ ██████╗   󰫢   󰫢   󰫢    ██╗██╗          󱝁
              ██║██║   󰫢  󰫢  󰫢  󰫢  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗   󰫢  󰫢  󰫢  󰫢  ██║██║      󱝁    
              ╚═╝╚═╝ 󰫢   󰫢   󰫢     ███████╗   ██║   ███████║██████╔╝ 󰫢   󰫢   󰫢     ╚═╝╚═╝   󱝁       
                       󰫢  󰫢  󰫢  󰫢  ╚════██║   ██║   ██╔══██║██╔══██╗   󰫢  󰫢  󰫢  󰫢         󱝁         
                    ██████████████╗███████║   ██║   ██║  ██║██║  ██║███████████████╗                
                    ╚═════════════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════════════╝                
        ]]
        logo = string.rep("\n", 8) .. logo .. "\n\n"

        opts.config.header = vim.split(logo, "\n")
        opts.config.center[6].action = function()
            vim.api.nvim_set_current_dir(vim.fn.stdpath("config"))
            require("telescope.builtin").find_files()
        end

        for index, value in pairs(opts.config.center) do
            value.icon = icons[index]
        end
    end,
}
