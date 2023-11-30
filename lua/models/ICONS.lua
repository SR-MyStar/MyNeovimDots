local ICONS = {}

ICONS.dap = {
    Stopped = {
        "󰁕 ",
        "DiagnosticWarn",
        "DapStoppedLine",
    },
    Breakpoint = " ",
    BreakpointCondition = "󰘥 ",
    BreakpointRejected = {
        " ",
        "DiagnosticError",
    },
    LogPoint = ".>",
}

ICONS.diagnostics = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}

ICONS.git = {
    added = " ",
    modified = "󰏭 ",
    remoed = " ",
}

ICONS.kindsNoLastSpace = {
    Array = "",
    Boolean = "",
    BreakStatement = "󰙧",
    Call = "󰃷",
    CaseStatement = "󱃙",
    Class = "󰠱",
    Codeium = "󰘦",
    Color = "",
    Constant = "󰏿",
    Constructor = "",
    ContinueStatement = "→",
    Copilot = "",
    Declaration = "󰙠",
    Delete = "󰩺",
    DoStatement = "󰑖",
    Eent = "",
    Enum = "",
    EnumMember = "",
    Event = "",
    Field = "",
    File = "󰧮",
    Folder = "",
    ForStatement = "󰑖",
    Function = "󰡱",
    H1Marker = "󰉫",
    H2Marker = "󰉬",
    H3Marker = "󰉭",
    H4Marker = "󰉮",
    H5Marker = "󰉯",
    H6Marker = "󰉰",
    Identifier = "󰀫",
    IfStatement = "󰇉",
    Interface = "",
    Key = "",
    Keyword = "󰌋",
    List = "",
    Log = "󰦪",
    Lsp = "",
    Macro = "󰁌",
    MarkdownH1 = "󰉫",
    MarkdownH2 = "󰉬",
    MarkdownH3 = "󰉭",
    MarkdownH4 = "󰉮",
    MarkdownH5 = "󰉯",
    MarkdownH6 = "󰉰",
    Method = "󰆧",
    Module = "󰏗",
    Namespace = "",
    Null = "󰢤",
    Number = "",
    Object = "",
    Operator = "󰆕",
    Package = "",
    Pair = "",
    Property = "󰜢",
    Reference = "",
    Regex = "",
    Repeat = "󰑖",
    Scope = "",
    Snippet = "",
    Specifier = "󰦪",
    Statement = "",
    String = "",
    Struct = "",
    SwitchStatement = "󰺟",
    Text = "󰧭",
    Type = "",
    TypeParameter = "󰅲",
    Unit = "󰑭",
    Value = "󰎠",
    Variable = "󰂡",
    WhileStatement = "󰑖",
}

ICONS.kinds = {}
for k, v in pairs(ICONS.kindsNoLastSpace) do
    ICONS.kinds[k] = v .. " ";
end

ICONS.clangdAst = {}

ICONS.clangdAst.role_icons = {
    type = ICONS.kindsNoLastSpace.Type,
    declaration = ICONS.kindsNoLastSpace.Declaration,
    expression = "",
    statement = ICONS.kindsNoLastSpace.Statement,
    specifier = ICONS.kindsNoLastSpace.Specifier,
    ["template argument"] = "",
}

ICONS.clangdAst.kind_icons = {
    Compound = "",
    Recovery = "",
    TranslationUnit = "",
    PackExpansion = "",
    TemplateTypeParm = "",
    TemplateTemplateParm = "",
    TemplateParamObject = "",
}

ICONS.Telescope = {
    find_files = {
        prompt_prefix = " 󰥺 ",
    },
    oldfiles = {
        prompt_prefix = " 󱀻 ",
    },
    live_grep = {
        prompt_prefix = "  ",
    },
    buffers = {
        prompt_prefix = "  ",
    },
    current_buffer_fuzzy_find = {
        prompt_prefix = "  ",
    },
    highlights = {
        prompt_prefix = " 󰌁 ",
    },
    keymaps = {
        prompt_prefix = "   ",
    },
    man_pages = {
        prompt_prefix = " 󰗚 ",
    },
    help_tags = {
        prompt_prefix = " " .. ICONS.dap.BreakpointCondition,
    },
    vim_options = {
        prompt_prefix = " " .. ICONS.kinds.Constructor,
    },
    lsp_document_symbols = {
        prompt_prefix = " " .. ICONS.kinds.Namespace,
    },
    grep_string = {
        prompt_prefix = " " .. ICONS.kinds.String,
    },
    colorscheme = {
        prompt_prefix = "  ",
    },
    registers = {
        prompt_prefix = " 󱣺 ",
    },
}
ICONS.Telescope.lsp_workspace_symbols = ICONS.Telescope.lsp_document_symbols
ICONS.Telescope.lsp_dynamic_workspace_symbols = ICONS.Telescope.lsp_document_symbols

return ICONS
