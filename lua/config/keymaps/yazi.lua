local Util = require("lazyvim.util")

return {
  keys = {
    e = {
      function()
        local tempname = vim.fn.tempname()
        Util.terminal({
          "yazi",
          "--chooser-file=" .. tempname,
        }, {
          cwd = Util.root(),
          esc_esc = false,
          ctrl_hjkl = false,
          border = "single",
          title = "yazi",
          title_pos = "center",
          size = { height = 0.8, width = 0.9 },
          on_exit = function()
            ---@diagnostic disable-next-line: param-type-mismatch
            if vim.loop.fs_statfs(tempname) then
              for _, file in pairs(vim.fn.readfile(tempname)) do
                vim.api.nvim_command("e " .. file)
              end
              vim.fn.delete(tempname)
            end
          end,
        })
      end,
      "Yazi (root dir)",
    },
    E = {
      function()
        local tempname = vim.fn.tempname()
        Util.terminal({
          "yazi",
          "--chooser-file=" .. tempname,
        }, {
          esc_esc = false,
          ctrl_hjkl = false,
          border = "single",
          title = "yazi",
          title_pos = "center",
          size = { height = 0.8, width = 0.9 },
          on_exit = function()
            ---@diagnostic disable-next-line: param-type-mismatch
            if vim.loop.fs_statfs(tempname) then
              for _, file in pairs(vim.fn.readfile(tempname)) do
                vim.api.nvim_command("e " .. file)
              end
              vim.fn.delete(tempname)
            end
          end,
        })
      end,
      "Yazi (cwd)",
    },
  },
  opts = { mode = "n", prefix = "<leader>" },
}
