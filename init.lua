-- 字体
vim.opt.guifont = "JetBrainsMono NF ExtraLight,FZLanTingYuan-DB-GBK,Apple Color Emoji:h12.5:#h-slight:b"
if vim.g.neovide then
    require("neovide.neovide")
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
