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
  BreakStatement = "󰙧",
  Call = "󰃷",
  CaseStatement = "󱃙",
  ContinueStatement = "→",
  Declaration = "󰙠",
  Delete = "󰩺",
  DoStatement = "󰑖",
  Event = "",
  Field = "",
  ForStatement = "󰑖",
  H1Marker = "󰉫", -- Used by markdown treesitter parser
  H2Marker = "󰉬",
  H3Marker = "󰉭",
  H4Marker = "󰉮",
  H5Marker = "󰉯",
  H6Marker = "󰉰",
  Identifier = "󰀫",
  IfStatement = "󰇉",
  List = "",
  Log = "󰦪",
  Lsp = "",
  Macro = "󰁌",
  MarkdownH1 = "󰉫", -- Used by builtin markdown source
  MarkdownH2 = "󰉬",
  MarkdownH3 = "󰉭",
  MarkdownH4 = "󰉮",
  MarkdownH5 = "󰉯",
  MarkdownH6 = "󰉰",
  Null = "󰢤",
  Pair = "",
  Regex = "",
  Repeat = "󰑖",
  Scope = "",
  Specifier = "󰦪",
  Statement = "",
  SwitchStatement = "󰺟",
  Type = "",
  WhileStatement = "󰑖",
  Array = "",
  Boolean = "",
  Color = "",
  Copilot = "",
  Key = "",
  Namespace = "",
  Number = "",
  Object = "",
  Package = "",
  Snippet = "",
  String = "",
  Text = "󰧭",
  Unit = "󰑭",
  Method = "󰆧",
  Function = "󰡱",
  Constructor = "",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "󰏗",
  Property = "󰜢",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  File = "󰧮",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "",
  Eent = "",
  Operator = "󰆕",
  TypeParameter = "󰅲",
}

ICONS.kinds = {
  BreakStatement = ICONS.kindsNoLastSpace.BreakStatement .. " ",
  Call = ICONS.kindsNoLastSpace.Call .. " ",
  CaseStatement = ICONS.kindsNoLastSpace.CaseStatement .. " ",
  ContinueStatement = ICONS.kindsNoLastSpace.ContinueStatement .. " ",
  Declaration = ICONS.kindsNoLastSpace.Declaration .. " ",
  Delete = ICONS.kindsNoLastSpace.Delete .. " ",
  DoStatement = ICONS.kindsNoLastSpace.DoStatement .. " ",
  Event = ICONS.kindsNoLastSpace.Event .. " ",
  Field = ICONS.kindsNoLastSpace.Field .. " ",
  ForStatement = ICONS.kindsNoLastSpace.ForStatement .. " ",
  H1Marker = ICONS.kindsNoLastSpace.H1Marker .. " ",
  H2Marker = ICONS.kindsNoLastSpace.H2Marker .. " ",
  H3Marker = ICONS.kindsNoLastSpace.H3Marker .. " ",
  H4Marker = ICONS.kindsNoLastSpace.H4Marker .. " ",
  H5Marker = ICONS.kindsNoLastSpace.H5Marker .. " ",
  H6Marker = ICONS.kindsNoLastSpace.H6Marker .. " ",
  Identifier = ICONS.kindsNoLastSpace.Identifier .. " ",
  IfStatement = ICONS.kindsNoLastSpace.IfStatement .. " ",
  List = ICONS.kindsNoLastSpace.List .. " ",
  Log = ICONS.kindsNoLastSpace.Log .. " ",
  Lsp = ICONS.kindsNoLastSpace.Lsp .. " ",
  Macro = ICONS.kindsNoLastSpace.Macro .. " ",
  MarkdownH1 = ICONS.kindsNoLastSpace.MarkdownH1 .. " ",
  MarkdownH2 = ICONS.kindsNoLastSpace.MarkdownH2 .. " ",
  MarkdownH3 = ICONS.kindsNoLastSpace.MarkdownH3 .. " ",
  MarkdownH4 = ICONS.kindsNoLastSpace.MarkdownH4 .. " ",
  MarkdownH5 = ICONS.kindsNoLastSpace.MarkdownH5 .. " ",
  MarkdownH6 = ICONS.kindsNoLastSpace.MarkdownH6 .. " ",
  Null = ICONS.kindsNoLastSpace.Null .. " ",
  Pair = ICONS.kindsNoLastSpace.Pair .. " ",
  Regex = ICONS.kindsNoLastSpace.Regex .. " ",
  Repeat = ICONS.kindsNoLastSpace.Repeat .. " ",
  Scope = ICONS.kindsNoLastSpace.Scope .. " ",
  Specifier = ICONS.kindsNoLastSpace.Specifier .. " ",
  Statement = ICONS.kindsNoLastSpace.Statement .. " ",
  SwitchStatement = ICONS.kindsNoLastSpace.SwitchStatement .. " ",
  Type = ICONS.kindsNoLastSpace.Type .. " ",
  WhileStatement = ICONS.kindsNoLastSpace.WhileStatement .. " ",
  Array = ICONS.kindsNoLastSpace.Array .. " ",
  Boolean = ICONS.kindsNoLastSpace.Boolean .. " ",
  Color = ICONS.kindsNoLastSpace.Color .. " ",
  Copilot = ICONS.kindsNoLastSpace.Copilot .. " ",
  Key = ICONS.kindsNoLastSpace.Key .. " ",
  Namespace = ICONS.kindsNoLastSpace.Namespace .. " ",
  Number = ICONS.kindsNoLastSpace.Number .. " ",
  Object = ICONS.kindsNoLastSpace.Object .. " ",
  Package = ICONS.kindsNoLastSpace.Package .. " ",
  Snippet = ICONS.kindsNoLastSpace.Snippet .. " ",
  String = ICONS.kindsNoLastSpace.String .. " ",
  Text = ICONS.kindsNoLastSpace.Text .. " ",
  Unit = ICONS.kindsNoLastSpace.Unit .. " ",
  Method = ICONS.kindsNoLastSpace.Method .. " ",
  Function = ICONS.kindsNoLastSpace.Function .. " ",
  Constructor = ICONS.kindsNoLastSpace.Constructor .. " ",
  Variable = ICONS.kindsNoLastSpace.Variable .. " ",
  Class = ICONS.kindsNoLastSpace.Class .. " ",
  Interface = ICONS.kindsNoLastSpace.Interface .. " ",
  Module = ICONS.kindsNoLastSpace.Module .. " ",
  Property = ICONS.kindsNoLastSpace.Property .. " ",
  Value = ICONS.kindsNoLastSpace.Value .. " ",
  Enum = ICONS.kindsNoLastSpace.Enum .. " ",
  Keyword = ICONS.kindsNoLastSpace.Keyword .. " ",
  File = ICONS.kindsNoLastSpace.File .. " ",
  Reference = ICONS.kindsNoLastSpace.Reference .. " ",
  Folder = ICONS.kindsNoLastSpace.Folder .. " ",
  EnumMember = ICONS.kindsNoLastSpace.EnumMember .. " ",
  Constant = ICONS.kindsNoLastSpace.Constant .. " ",
  Struct = ICONS.kindsNoLastSpace.Struct .. " ",
  Eent = ICONS.kindsNoLastSpace.Eent .. " ",
  Operator = ICONS.kindsNoLastSpace.Operator .. " ",
  TypeParameter = ICONS.kindsNoLastSpace.TypeParameter .. " ",
}

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
