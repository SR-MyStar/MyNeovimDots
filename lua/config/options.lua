-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local env = require("_env")

local function require_options(file)
  if file.extension == "lua" and file.name:sub(1, 1) ~= "_" then
    require(env.d_options .. "." .. file.name)()
  end
end

for _, file in
  pairs(
    vim.fn.readdir(
      vim.fn.stdpath("config")
        .. "/lua/"
        .. string.gsub(env.d_options, "%.", "/")
    )
  )
do
  require_options(env.f_split_filename(file))
end
