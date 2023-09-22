local ICONS = {}

ICONS.dap = {
  Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
  Breakpoint = " ",
  BreakpointCondition = " ",
  BreakpointRejected = { " ", "DiagnosticError" },
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
  remoed = " ",
}

ICONS.kinds = {
  Array = " ",
  Boolean = " ",
  Color = " ",
  Copilot = " ",
  Field = " ",
  Key = " ",
  Namespace = " ",
  Null = " ",
  Number = " ",
  Object = " ",
  Package = " ",
  Snippet = " ",
  String = " ",
  Text = "󰧭 ",
  Unit = "󰑭 ",
  Method = "󰆧 ",
  Function = "󰡱 ",
  Constructor = " ",
  Variable = "󰂡 ",
  Class = "󰠱 ",
  Interface = " ",
  Module = "󰏗 ",
  Property = "󰜢 ",
  Value = "󰎠 ",
  Enum = " ",
  Keyword = "󰌋 ",
  File = "󰧮 ",
  Reference = " ",
  Folder = " ",
  EnumMember = " ",
  Constant = "󰏿 ",
  Struct = " ",
  Eent = " ",
  Operator = "󰆕 ",
  TypeParameter = "󰅲 ",
}
return ICONS
