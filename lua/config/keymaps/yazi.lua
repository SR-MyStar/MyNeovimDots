local Util = require("lazyvim.util")

return {
  keys = {
    e = {
      function()
        Util.terminal({
          "yazi",
          "--chooser-file=/tmp/temp-yazi-chooser-file-temp.txt",
        }, {
          cwd = Util.root(),
          esc_esc = false,
          ctrl_hjkl = false,
          border = "single",
          title = "yazi",
          title_pos = "center",
          size = { height = 0.8, width = 0.9 },
          on_exit = function()
            if
              vim.loop.fs_stat("/tmp/temp-yazi-chooser-file-temp.txt")
              ~= nil
            then
              local selected_file_paths =
                vim.fn.readfile("/tmp/temp-yazi-chooser-file-temp.txt")
              vim.fn.delete("/tmp/temp-yazi-chooser-file-temp.txt")
              for _, selected_file_path in pairs(selected_file_paths) do
                vim.api.nvim_command("e " .. selected_file_path)
              end
            end
          end,
        })
      end,
      "Yazi (root dir)",
    },
    E = {
      function()
        Util.terminal({
          "yazi",
          "--chooser-file=/tmp/temp-yazi-chooser-file-temp.txt",
        }, {
          esc_esc = false,
          ctrl_hjkl = false,
          border = "single",
          title = "yazi",
          title_pos = "center",
          size = { height = 0.8, width = 0.9 },
          on_exit = function()
            if
              vim.loop.fs_stat("/tmp/temp-yazi-chooser-file-temp.txt")
              ~= nil
            then
              local filepath = "/tmp/temp-yazi-chooser-file-temp.txt"
              local selected_file_path = vim.fn.readfile(filepath)[1]
              vim.fn.delete("/tmp/temp-yazi-chooser-file-temp.txt")
              vim.api.nvim_command("e " .. selected_file_path)
            end
          end,
        })
      end,
      "Yazi (cwd)",
    },
  },
  opts = { mode = "n", prefix = "<leader>" },
}
