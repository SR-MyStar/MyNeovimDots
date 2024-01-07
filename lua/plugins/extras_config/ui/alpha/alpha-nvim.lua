return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
          ██╗██╗  󰫢   󰫢   󰫢    ███████╗████████╗ █████╗ ██████╗   󰫢   󰫢   󰫢    ██╗██╗          󱝁
          ██║██║   󰫢  󰫢  󰫢  󰫢  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗   󰫢  󰫢  󰫢  󰫢  ██║██║      󱝁
          ╚═╝╚═╝ 󰫢   󰫢   󰫢     ███████╗   ██║   ███████║██████╔╝ 󰫢   󰫢   󰫢     ╚═╝╚═╝   󱝁
                   󰫢  󰫢  󰫢  󰫢  ╚════██║   ██║   ██╔══██║██╔══██╗   󰫢  󰫢  󰫢  󰫢         󱝁
                ██████████████╗███████║   ██║   ██║  ██║██║  ██║███████████████╗
                ╚═════════════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════════════╝
        ]]

    dashboard.section.header.val = vim.split(logo, "\n")
        -- stylua: ignore
        dashboard.section.buttons.val = {
            dashboard.button("f", "󰥺 " .. " Find file",       "<cmd>Telescope find_files<CR>"                                                                     ),
            dashboard.button("n", "󱀺 " .. " New file",        "<cmd>ene <BAR> startinsert<CR>"                                                                    ),
            dashboard.button("p", " " .. " Projects",        "<cmd>Telescope projects <CR>"                                                                      ),
            dashboard.button("r", "󱀻 " .. " Recent files",    "<cmd>Telescope oldfiles<CR>"                                                                       ),
            dashboard.button("g", "󰧭 " .. " Find text",       "<cmd>Telescope live_grep<CR>"                                                                      ),
            dashboard.button("c", "󱙨 " .. " Config",          [[<cmd>lua vim.api.nvim_set_current_dir(vim.fn.stdpath("config"))<CR><cmd>Telescope find_files<CR>]]),
            dashboard.button("s", "󰷜 " .. " Restore Session", [[<cmd>lua require("persistence").load()<CR>]]                                                      ),
            dashboard.button("e", " " .. " Lazy Extras",     "<cmd>LazyExtras <CR>"                                                                              ),
            dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd>Lazy<CR>"                                                                                     ),
            dashboard.button("q", " " .. " Quit",            "<cmd>qa<CR>"                                                                                       ),
        }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
}
