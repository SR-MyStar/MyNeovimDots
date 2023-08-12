-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  local neovide = require("neovide.neovide")
  neovide.init()
end
