local wk = require("which-key")

local function GetExtension(file)
  return {
    fileName = file:match("(.+)%."),
    fileExtensionfile = file:match(".+%.(%w+)$"),
  }
end

local function RequireKeymapFile(fileTable)
  if fileTable.fileExtensionfile == "lua" then
    local keymapsGroup = require("keymaps." .. fileTable.fileName)
    wk.register(keymapsGroup.keys, keymapsGroup.opts)
  end
end

local function attrdir()
  for _, file in pairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/keymaps")) do
    RequireKeymapFile(GetExtension(file))
  end
end

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.plugins = { spelling = true }
    wk.register({
      ["<leader>\\"] = { name = "+visual-multi" },
      ["gs"] = { name = "+Mini surround" },
      ["m"] = { name = "+surround" },
    }, { mode = "n" })
    wk.register({
      ["<C-g>"] = { name = "+surround" },
    }, { mode = "i" })
    attrdir()
  end,
}
