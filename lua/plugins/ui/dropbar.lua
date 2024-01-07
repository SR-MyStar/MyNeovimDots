local ICONS = require(require("_env").fm_ICONS)
local api = require("dropbar.api")

local confirm = function()
  local menu = api.get_current_dropbar_menu()
  if not menu then
    return
  end
  local cursor = vim.api.nvim_win_get_cursor(menu.win)
  local component = menu.entries[cursor[1]]:first_clickable(cursor[2])
  if component then
    menu:click_on(component)
  end
end

local quit_curr = function()
  local menu = api.get_current_dropbar_menu()
  if menu then
    menu:close()
  end
end

require("which-key").register({
  ["<Leader>;"] = { api.pick, "Pick a component (dropbar)" },
  ["[c"] = { api.goto_context_start, "Goto the start of context (dropbar)" },
  ["]c"] = {
    api.select_next_context,
    "Select the next context on menu (dropbar)",
  },
}, { mode = "n" })

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    event = "VeryLazy",
    priority = 1000,
    opts = function(_, opts)
      opts.integrations.dropbar = {
        enabled = true,
        color_mode = true, -- enable color for kind's texts, not just kind's icons
      }
    end,
  },
  {
    "Bekaboo/dropbar.nvim",
    opts = {
      general = {
        enable = function(buf, win)
          return not vim.api.nvim_win_get_config(win).zindex
            and vim.bo[buf].buftype == ""
            and vim.api.nvim_buf_get_name(buf) ~= ""
            and not vim.wo[win].diff
        end,
      },
      bar = {
        pick = {
          pivots = "jkl;asdfgh'iowequytrq",
        },
      },
      menu = {
        -- When on, automatically set the cursor to the closest previous/next
        -- clickable component in the direction of cursor movement on CursorMoved
        quick_navigation = true,
        ---@type table<string, string|function|table<string, string|function>>
        keymaps = {
          ["<LeftMouse>"] = function()
            local menu = api.get_current_dropbar_menu()
            if not menu then
              return
            end
            local mouse = vim.fn.getmousepos()
            if mouse.winid ~= menu.win then
              local parent_menu = api.get_dropbar_menu(mouse.winid)
              if parent_menu and parent_menu.sub_menu then
                parent_menu.sub_menu:close()
              end
              if vim.api.nvim_win_is_valid(mouse.winid) then
                vim.api.nvim_set_current_win(mouse.winid)
              end
              return
            end
            menu:click_at({ mouse.line, mouse.column }, nil, 1, "l")
          end,
          ["<CR>"] = confirm,
          ["l"] = confirm,
          ["<esc>"] = quit_curr,
          ["<BS>"] = quit_curr,
          ["q"] = quit_curr,
          ["h"] = quit_curr,
          ["<MouseMove>"] = function()
            local menu = api.get_current_dropbar_menu()
            if not menu then
              return
            end
            local mouse = vim.fn.getmousepos()
            if mouse.winid ~= menu.win then
              return
            end
            menu:update_hover_hl({ mouse.line, mouse.column - 1 })
          end,
        },
      },
      icons = {
        kinds = {
          symbols = ICONS.kinds,
        },
        ui = {
          bar = {
            separator = "  ",
            extends = "…",
          },
          menu = {
            separator = " ",
            indicator = "  ",
          },
        },
      },
    },
  },
}
