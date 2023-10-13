return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local icons = { "󰥺 ", "󰮟 ", "󱀺 ", "󱀻 ", " ", "󰧭 ", "󱙨 ", "󰷜 ", " ", "󰒲 ", " " }
    local file_browser = {
      action = "<cmd>Telescope file_browser<CR>",
      desc = " File browser",
      key = "d",
      icon = "󰮟 ",
    }
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
    table.insert(opts.config.center, 2, file_browser)
    for key, value in pairs(opts.config.center) do
      value.icon = icons[key]
    end

    return opts
  end,
}
