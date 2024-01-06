local lang = require("_env").ed.lang

return {
    { import = lang .. ".clangd.clangd-extensions" },
    { import = lang .. ".clangd.mason" },
    { import = lang .. ".clangd.conform" },
}
