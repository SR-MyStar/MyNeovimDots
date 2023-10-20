local function custom_highlights(C)
    local function reverse(highlightGroup)
        return {
            fg = highlightGroup.bg,
            bg = highlightGroup.fg,
        }
    end
    local bg = O.transparent_background and C.none or C.base
    local highlights = {
        CmpItemAbbr = { fg = C.overlay2 },
        CmpItemMenu = { fg = C.overlay1 },
        CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
        CmpItemKindKeyword = { fg = C.base, bg = C.red },
        CmpItemKindText = { fg = C.base, bg = C.teal },
        CmpItemKindMethod = { fg = C.base, bg = C.blue },
        CmpItemKindConstructor = { fg = C.base, bg = C.blue },
        CmpItemKindFunction = { fg = C.base, bg = C.blue },
        CmpItemKindFolder = { fg = C.base, bg = C.blue },
        CmpItemKindModule = { fg = C.base, bg = C.blue },
        CmpItemKindConstant = { fg = C.base, bg = C.peach },
        CmpItemKindField = { fg = C.base, bg = C.green },
        CmpItemKindProperty = { fg = C.base, bg = C.green },
        CmpItemKindEnum = { fg = C.base, bg = C.green },
        CmpItemKindUnit = { fg = C.base, bg = C.green },
        CmpItemKindClass = { fg = C.base, bg = C.yellow },
        CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
        CmpItemKindFile = { fg = C.base, bg = C.blue },
        CmpItemKindInterface = { fg = C.base, bg = C.yellow },
        CmpItemKindColor = { fg = C.base, bg = C.red },
        CmpItemKindReference = { fg = C.base, bg = C.red },
        CmpItemKindEnumMember = { fg = C.base, bg = C.red },
        CmpItemKindStruct = { fg = C.base, bg = C.blue },
        CmpItemKindValue = { fg = C.base, bg = C.peach },
        CmpItemKindEvent = { fg = C.base, bg = C.blue },
        CmpItemKindOperator = { fg = C.base, bg = C.blue },
        CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
        CmpItemKindCopilot = { fg = C.base, bg = C.teal },

        FlashBackdrop = { fg = C.overlay0 },
        FlashLabel = { fg = C.base, bg = C.green, style = { "bold" } },
        FlashMatch = { fg = C.base, bg = C.lavender },
        FlashCurrent = { fg = C.base, bg = C.peach },

        TelescopeMatching = { fg = O.transparent_background and C.none or C.red },
        TelescopeNormal = { bg = O.transparent_background and C.none or C.mantle },
        TelescopePreviewBorder = {
            fg = O.transparent_background and C.none or C.green,
            bg = O.transparent_background and C.green or C.base,
        },
        TelescopePreviewTitle = {
            fg = O.transparent_background and C.green or C.base,
            bg = O.transparent_background and C.none or C.green,
        },
        TelescopePromptBorder = {
            fg = O.transparent_background and C.none or C.red,
            bg = O.transparent_background and C.red or C.base,
        },
        TelescopePromptPrefix = {
            fg = C.red,
            bg = O.transparent_background and C.none or C.base,
        },
        TelescopePromptTitle = {
            fg = O.transparent_background and C.red or C.base,
            bg = O.transparent_background and C.none or C.red,
        },
        TelescopeResultsBorder = { link = "TelescopePromptBorder" },
        TelescopeResultsTitle = { link = "TelescopePromptTitle" },
        TelescopeSelection = {
            fg = O.transparent_background and C.red or C.text,
            bg = O.transparent_background and C.none or C.base,
            style = { "bold" },
        },
        TelescopeSelectionCaret = { fg = C.red },

        TroubleNormal = { link = "Normal" },
    }

    highlights.DropBarIconKindDeclaration = reverse(highlights.CmpItemKindSnippet)
    highlights.DropBarIconKindIdentifier = reverse(highlights.CmpItemKindVariable)
    highlights.DropBarIconKindPackage = reverse(highlights.CmpItemKindModule)
    highlights.DropBarIconKindKeyword = reverse(highlights.CmpItemKindKeyword)
    highlights.DropBarIconKindType = reverse(highlights.CmpItemKindClass)
    highlights.DropBarIconKindText = reverse(highlights.CmpItemKindText)
    highlights.DropBarIconKindMethod = reverse(highlights.CmpItemKindMethod)
    highlights.DropBarIconKindConstructor = reverse(highlights.CmpItemKindConstructor)
    highlights.DropBarIconKindFunction = reverse(highlights.CmpItemKindFunction)
    highlights.DropBarIconKindFolder = reverse(highlights.CmpItemKindFolder)
    highlights.DropBarIconKindModule = reverse(highlights.CmpItemKindModule)
    highlights.DropBarIconKindConstant = reverse(highlights.CmpItemKindConstant)
    highlights.DropBarIconKindField = reverse(highlights.CmpItemKindField)
    highlights.DropBarIconKindProperty = reverse(highlights.CmpItemKindProperty)
    highlights.DropBarIconKindEnum = reverse(highlights.CmpItemKindEnum)
    highlights.DropBarIconKindUnit = reverse(highlights.CmpItemKindUnit)
    highlights.DropBarIconKindClass = reverse(highlights.CmpItemKindClass)
    highlights.DropBarIconKindVariable = reverse(highlights.CmpItemKindVariable)
    highlights.DropBarIconKindFile = reverse(highlights.CmpItemKindFile)
    highlights.DropBarIconKindInterface = reverse(highlights.CmpItemKindInterface)
    highlights.DropBarIconKindColor = reverse(highlights.CmpItemKindColor)
    highlights.DropBarIconKindReference = reverse(highlights.CmpItemKindReference)
    highlights.DropBarIconKindEnumMember = reverse(highlights.CmpItemKindEnumMember)
    highlights.DropBarIconKindStruct = reverse(highlights.CmpItemKindStruct)
    highlights.DropBarIconKindValue = reverse(highlights.CmpItemKindValue)
    highlights.DropBarIconKindEvent = reverse(highlights.CmpItemKindEvent)
    highlights.DropBarIconKindOperator = reverse(highlights.CmpItemKindOperator)
    highlights.DropBarIconKindTypeParameter = reverse(highlights.CmpItemKindTypeParameter)
    highlights.DropBarIconKindCopilot = reverse(highlights.CmpItemKindCopilot)
    highlights.DropBarIconUISeparator = { fg = C.text }

    return highlights
end

return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    event = "VeryLazy",
    priority = 1000,
    opts = {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = true, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" }, -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
            -- sidebars = "transparent",
            -- floats = "transparent",
        },
        color_overrides = {},
        custom_highlights = custom_highlights,
        integrations = {
            -- alpha = true,
            cmp = true,
            dap = {
                enabled = true,
                enable_ui = true, -- enable nvim-dap-ui
            },
            dashboard = true,
            flash = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            lsp_trouble = true,
            mason = true,
            mini = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
                inlay_hints = {
                    background = true,
                },
            },
            navic = { enabled = true, custom_bg = "lualine" },
            neotest = true,
            noice = true,
            notify = true,
            neotree = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            which_key = true,
            dropbar = {
                enabled = true,
                color_mode = true, -- enable color for kind's texts, not just kind's icons
            },
            nvimtree = true,
            -- hop = true,
            treesitter_context = true,
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
    },
}
