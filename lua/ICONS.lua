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
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}

ICONS.git = {
    added = " ",
    modified = " ",
    removed = " ",
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
    Emoji = "󰇴",
    Enum = "",
    EnumMember = "",
    Event = "",
    Field = "",
    File = "󰧮",
    Folder = "",
    Fonts = "",
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
    NerdFont = "",
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
    ICONS.kinds[k] = v .. " "
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

return ICONS
