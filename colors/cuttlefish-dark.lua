-- Cuttlefish Dark: the dark companion to the Kindle-like light theme.
-- Syntax remains monochrome; only LSP diagnostics use color.

-- Load the complete group map first, then replace its light palette. This
-- keeps both variants in sync as new syntax/plugin groups are added.
vim.cmd.colorscheme("cuttlefish")
vim.o.background = "dark"
vim.g.colors_name = "cuttlefish-dark"

local palette = {
  background = "#292927",
  surface = "#323230",
  surface_deep = "#3b3b38",
  selection = "#4b4b47",
  ink = "#e7e6e0",
  ink_soft = "#c4c3bd",
  ink_muted = "#96958f",
  ink_faint = "#706f69",
  rule = "#5b5a55",

  -- The only hues in the theme: LSP information, warnings, and errors.
  diag_error = "#d16a60",
  diag_warn = "#d4ac51",
  diag_info = "#76a3cc",
}

local function hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

-- Editor chrome -------------------------------------------------------------
hl("Normal", { fg = palette.ink, bg = palette.background })
hl("NormalNC", { fg = palette.ink, bg = palette.background })
hl("NormalFloat", { fg = palette.ink, bg = palette.surface })
hl("FloatBorder", { fg = palette.rule, bg = palette.surface })
hl("FloatTitle", { fg = palette.ink, bg = palette.surface, bold = true })
hl("SignColumn", { fg = palette.ink_muted, bg = palette.background })
hl("FoldColumn", { fg = palette.ink_faint, bg = palette.background })
hl("Folded", { fg = palette.ink_soft, bg = palette.surface })
hl("Cursor", { fg = palette.background, bg = palette.ink })
hl("lCursor", { fg = palette.background, bg = palette.ink })
hl("CursorIM", { fg = palette.background, bg = palette.ink })
hl("CursorLine", { bg = palette.surface })
hl("CursorColumn", { bg = palette.surface })
hl("ColorColumn", { bg = palette.surface })
hl("LineNr", { fg = palette.ink_faint, bg = palette.background })
hl("CursorLineNr", { fg = palette.ink, bg = palette.surface, bold = true })
hl("NonText", { fg = palette.ink_faint })
hl("Whitespace", { fg = palette.rule })
hl("SpecialKey", { fg = palette.ink_faint })
hl("EndOfBuffer", { fg = palette.surface_deep, bg = palette.background })
hl("VertSplit", { fg = palette.rule, bg = palette.background })
hl("WinSeparator", { fg = palette.rule, bg = palette.background })
hl("Visual", { bg = palette.selection })
hl("VisualNOS", { bg = palette.selection })
hl("Search", { fg = palette.ink, bg = palette.selection, bold = true })
hl("IncSearch", { fg = palette.background, bg = palette.ink, bold = true })
hl("CurSearch", { fg = palette.background, bg = palette.ink, bold = true })
hl("MatchParen", { fg = palette.ink, bg = palette.surface_deep, bold = true, underline = true })
hl("Directory", { fg = palette.ink, bold = true })
hl("Title", { fg = palette.ink, bold = true })
hl("Question", { fg = palette.ink, bold = true })
hl("MoreMsg", { fg = palette.ink, bold = true })
hl("ModeMsg", { fg = palette.ink, bold = true })
hl("WarningMsg", { fg = palette.ink, bold = true })
hl("ErrorMsg", { fg = palette.ink, bold = true })
hl("MsgArea", { fg = palette.ink, bg = palette.background })

-- Statusline, tabline, and command-line popups -----------------------------
hl("StatusLine", { fg = palette.ink, bg = palette.surface_deep, bold = true })
hl("StatusLineNC", { fg = palette.ink_muted, bg = palette.surface })
hl("TabLine", { fg = palette.ink_muted, bg = palette.surface })
hl("TabLineFill", { bg = palette.surface })
hl("TabLineSel", { fg = palette.ink, bg = palette.background, bold = true, underline = true })
hl("WildMenu", { fg = palette.background, bg = palette.ink, bold = true })
hl("Pmenu", { fg = palette.ink, bg = palette.surface })
hl("PmenuSel", { fg = palette.background, bg = palette.ink, bold = true })
hl("PmenuSbar", { bg = palette.surface_deep })
hl("PmenuThumb", { bg = palette.ink_muted })
hl("PmenuKind", { fg = palette.ink_soft, bg = palette.surface })
hl("PmenuKindSel", { fg = palette.background, bg = palette.ink })
hl("PmenuExtra", { fg = palette.ink_muted, bg = palette.surface })
hl("PmenuExtraSel", { fg = palette.surface_deep, bg = palette.ink })
hl("ComplMatchIns", { fg = palette.ink, bold = true })

-- Diff and diagnostics ------------------------------------------------------
hl("DiffAdd", { fg = palette.ink_soft, bg = palette.surface })
hl("DiffChange", { fg = palette.ink, bg = palette.surface_deep })
hl("DiffDelete", { fg = palette.ink_muted, bg = palette.surface })
hl("DiffText", { fg = palette.ink, bg = palette.selection, bold = true })
hl("Added", { fg = palette.ink_soft })
hl("Changed", { fg = palette.ink })
hl("Removed", { fg = palette.ink_muted })
hl("DiagnosticError", { fg = palette.diag_error, undercurl = true, sp = palette.diag_error })
hl("DiagnosticWarn", { fg = palette.diag_warn, undercurl = true, sp = palette.diag_warn })
hl("DiagnosticInfo", { fg = palette.diag_info, undercurl = true, sp = palette.diag_info })
hl("DiagnosticHint", { fg = palette.ink_soft, undercurl = true, sp = palette.ink_soft })
hl("DiagnosticOk", { fg = palette.ink_soft })
hl("DiagnosticVirtualTextError", { fg = palette.diag_error, bg = palette.surface })
hl("DiagnosticVirtualTextWarn", { fg = palette.diag_warn, bg = palette.surface })
hl("DiagnosticVirtualTextInfo", { fg = palette.diag_info, bg = palette.surface })
hl("DiagnosticVirtualTextHint", { fg = palette.ink_soft, bg = palette.surface })
hl("DiagnosticUnderlineError", { undercurl = true, sp = palette.diag_error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = palette.diag_warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = palette.diag_info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = palette.ink_soft })
hl("LspReferenceText", { bg = palette.surface_deep })
hl("LspReferenceRead", { bg = palette.surface_deep })
hl("LspReferenceWrite", { bg = palette.surface_deep, underline = true })
hl("LspCodeLens", { fg = palette.ink_muted, italic = true })
hl("LspCodeLensSeparator", { fg = palette.rule })

-- Diff signs and common git integrations
hl("GitSignsAdd", { fg = palette.ink_soft })
hl("GitSignsChange", { fg = palette.ink })
hl("GitSignsDelete", { fg = palette.ink_muted })
hl("GitSignsAddLn", { bg = palette.surface })
hl("GitSignsChangeLn", { bg = palette.surface_deep })
hl("GitSignsDeleteLn", { bg = palette.surface })
hl("SignifySignAdd", { fg = palette.ink_soft })
hl("SignifySignChange", { fg = palette.ink })
hl("SignifySignDelete", { fg = palette.ink_muted })

-- Vim syntax groups ---------------------------------------------------------
hl("Comment", { fg = palette.ink_muted, italic = true })
hl("Constant", { fg = palette.ink_soft, bold = true })
hl("String", { fg = palette.ink_soft })
hl("Character", { fg = palette.ink_soft })
hl("Number", { fg = palette.ink, bold = true })
hl("Boolean", { fg = palette.ink, bold = true })
hl("Float", { fg = palette.ink, bold = true })
hl("Identifier", { fg = palette.ink })
hl("Function", { fg = palette.ink, bold = true })
hl("Statement", { fg = palette.ink, bold = true })
hl("Conditional", { fg = palette.ink, bold = true, underline = true })
hl("Repeat", { fg = palette.ink, bold = true })
hl("Label", { fg = palette.ink_soft, bold = true })
hl("Operator", { fg = palette.ink_soft, bold = true })
hl("Keyword", { fg = palette.ink, bold = true })
hl("Exception", { fg = palette.ink, bold = true, underline = true })
hl("PreProc", { fg = palette.ink_soft })
hl("Include", { fg = palette.ink_soft, bold = true })
hl("Define", { fg = palette.ink_soft })
hl("Macro", { fg = palette.ink_soft, bold = true })
hl("PreCondit", { fg = palette.ink_soft })
hl("Type", { fg = palette.ink_soft, bold = true })
hl("StorageClass", { fg = palette.ink_soft, bold = true })
hl("Structure", { fg = palette.ink_soft, bold = true })
hl("Typedef", { fg = palette.ink_soft, bold = true })
hl("Special", { fg = palette.ink_soft })
hl("SpecialChar", { fg = palette.ink_soft, bold = true })
hl("Tag", { fg = palette.ink, bold = true })
hl("Delimiter", { fg = palette.ink_muted })
hl("Debug", { fg = palette.ink_soft })
hl("Underlined", { fg = palette.ink, underline = true })
hl("Ignore", { fg = palette.ink_faint })
hl("Error", { fg = palette.ink, bg = palette.surface_deep, bold = true, underline = true })
hl("Todo", { fg = palette.ink, bg = palette.surface_deep, bold = true })

-- Terminal colors remain grayscale in the dark variant.
local terminal = {
  "#20201e",
  "#3a3a38",
  "#555550",
  "#70706a",
  "#292927",
  "#4e4d49",
  "#74736e",
  "#96958f",
  "#4a4945",
  "#5f5e59",
  "#85847e",
  "#a7a69f",
  "#555450",
  "#777670",
  "#aaa9a2",
  "#e7e6e0",
}

for index, color in ipairs(terminal) do
  vim.g["terminal_color_" .. (index - 1)] = color
end
