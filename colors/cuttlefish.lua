-- Cuttlefish: a high-contrast light colorscheme for e-ink-friendly displays.
--
-- The palette deliberately keeps the background and syntax soft warm-grey. The
-- only strong hues reserved by this theme are blue, yellow, and red for LSP.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "cuttlefish"

local palette = {
  -- Neutral paper and ink
  -- A slight warm cast approximates an unlit Kindle/front-light display.
  paper = "#e2e1dc",
  paper_deep = "#d8d7d2",
  paper_dark = "#c9c8c3",
  paper_selection = "#bdbcb7",
  ink = "#2f2e2b",
  ink_soft = "#4e4d49",
  ink_muted = "#74736e",
  ink_faint = "#999893",
  rule = "#b7b6b0",

  -- The only hues in the theme: LSP information, warnings, and errors.
  diag_error = "#a33b32",
  diag_warn = "#866300",
  diag_info = "#315d87",
}

local function hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

local function link(group, target)
  vim.api.nvim_set_hl(0, group, { link = target })
end

-- Editor chrome -------------------------------------------------------------
hl("Normal", { fg = palette.ink, bg = palette.paper })
hl("NormalNC", { fg = palette.ink, bg = palette.paper })
hl("NormalFloat", { fg = palette.ink, bg = palette.paper_deep })
hl("FloatBorder", { fg = palette.rule, bg = palette.paper_deep })
hl("FloatTitle", { fg = palette.ink, bg = palette.paper_deep, bold = true })
hl("SignColumn", { fg = palette.ink_muted, bg = palette.paper })
hl("FoldColumn", { fg = palette.ink_faint, bg = palette.paper })
hl("Folded", { fg = palette.ink_soft, bg = palette.paper_deep })
hl("Cursor", { fg = palette.paper, bg = palette.ink })
hl("lCursor", { fg = palette.paper, bg = palette.ink })
hl("CursorIM", { fg = palette.paper, bg = palette.ink })
hl("CursorLine", { bg = palette.paper_deep })
hl("CursorColumn", { bg = palette.paper_deep })
hl("ColorColumn", { bg = palette.paper_deep })
hl("LineNr", { fg = palette.ink_faint, bg = palette.paper })
hl("CursorLineNr", { fg = palette.ink, bg = palette.paper_deep, bold = true })
hl("NonText", { fg = palette.ink_faint })
hl("Whitespace", { fg = palette.rule })
hl("SpecialKey", { fg = palette.ink_faint })
hl("EndOfBuffer", { fg = palette.paper_dark, bg = palette.paper })
hl("VertSplit", { fg = palette.rule, bg = palette.paper })
hl("WinSeparator", { fg = palette.rule, bg = palette.paper })
hl("Visual", { bg = palette.paper_selection })
hl("VisualNOS", { bg = palette.paper_selection })
hl("Search", { fg = palette.ink, bg = palette.paper_dark, bold = true })
hl("IncSearch", { fg = palette.paper, bg = palette.ink, bold = true })
hl("CurSearch", { fg = palette.paper, bg = palette.ink, bold = true })
hl("MatchParen", { fg = palette.ink, bg = palette.paper_dark, bold = true, underline = true })
hl("Directory", { fg = palette.ink, bold = true })
hl("Title", { fg = palette.ink, bold = true })
hl("Question", { fg = palette.ink, bold = true })
hl("MoreMsg", { fg = palette.ink, bold = true })
hl("ModeMsg", { fg = palette.ink, bold = true })
hl("WarningMsg", { fg = palette.ink, bold = true })
hl("ErrorMsg", { fg = palette.ink, bold = true })
hl("MsgArea", { fg = palette.ink, bg = palette.paper })

-- Statusline, tabline, and command-line popups -----------------------------
hl("StatusLine", { fg = palette.ink, bg = palette.paper_dark, bold = true })
hl("StatusLineNC", { fg = palette.ink_muted, bg = palette.paper_deep })
hl("TabLine", { fg = palette.ink_muted, bg = palette.paper_deep })
hl("TabLineFill", { bg = palette.paper_deep })
hl("TabLineSel", { fg = palette.ink, bg = palette.paper, bold = true, underline = true })
hl("WildMenu", { fg = palette.paper, bg = palette.ink, bold = true })
hl("Pmenu", { fg = palette.ink, bg = palette.paper_deep })
hl("PmenuSel", { fg = palette.paper, bg = palette.ink, bold = true })
hl("PmenuSbar", { bg = palette.paper_dark })
hl("PmenuThumb", { bg = palette.ink_muted })
hl("PmenuKind", { fg = palette.ink_soft, bg = palette.paper_deep })
hl("PmenuKindSel", { fg = palette.paper, bg = palette.ink })
hl("PmenuExtra", { fg = palette.ink_muted, bg = palette.paper_deep })
hl("PmenuExtraSel", { fg = palette.paper_dark, bg = palette.ink })
hl("ComplMatchIns", { fg = palette.ink, bold = true })
hl("Question", { fg = palette.ink, bold = true })

-- Diff and diagnostics ------------------------------------------------------
hl("DiffAdd", { fg = palette.ink_soft, bg = palette.paper_deep })
hl("DiffChange", { fg = palette.ink, bg = palette.paper_dark })
hl("DiffDelete", { fg = palette.ink_muted, bg = palette.paper_deep })
hl("DiffText", { fg = palette.ink, bg = palette.paper_selection, bold = true })
hl("Added", { fg = palette.ink_soft })
hl("Changed", { fg = palette.ink })
hl("Removed", { fg = palette.ink_muted })
hl("DiagnosticError", { fg = palette.diag_error, undercurl = true, sp = palette.diag_error })
hl("DiagnosticWarn", { fg = palette.diag_warn, undercurl = true, sp = palette.diag_warn })
hl("DiagnosticInfo", { fg = palette.diag_info, undercurl = true, sp = palette.diag_info })
hl("DiagnosticHint", { fg = palette.ink_soft, undercurl = true, sp = palette.ink_soft })
hl("DiagnosticOk", { fg = palette.ink_soft })
hl("DiagnosticVirtualTextError", { fg = palette.diag_error, bg = palette.paper_deep })
hl("DiagnosticVirtualTextWarn", { fg = palette.diag_warn, bg = palette.paper_deep })
hl("DiagnosticVirtualTextInfo", { fg = palette.diag_info, bg = palette.paper_deep })
hl("DiagnosticVirtualTextHint", { fg = palette.ink_soft, bg = palette.paper_deep })
hl("DiagnosticUnderlineError", { undercurl = true, sp = palette.diag_error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = palette.diag_warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = palette.diag_info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = palette.ink_soft })
hl("LspReferenceText", { bg = palette.paper_dark })
hl("LspReferenceRead", { bg = palette.paper_dark })
hl("LspReferenceWrite", { bg = palette.paper_dark, underline = true })
hl("LspCodeLens", { fg = palette.ink_muted, italic = true })
hl("LspCodeLensSeparator", { fg = palette.rule })

-- Diff signs and common git integrations
hl("GitSignsAdd", { fg = palette.ink_soft })
hl("GitSignsChange", { fg = palette.ink })
hl("GitSignsDelete", { fg = palette.ink_muted })
hl("GitSignsAddLn", { bg = palette.paper_deep })
hl("GitSignsChangeLn", { bg = palette.paper_dark })
hl("GitSignsDeleteLn", { bg = palette.paper_deep })
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
hl("Error", { fg = palette.ink, bg = palette.paper_dark, bold = true, underline = true })
hl("Todo", { fg = palette.ink, bg = palette.paper_dark, bold = true })

-- Treesitter captures -------------------------------------------------------
link("@annotation", "PreProc")
link("@attribute", "PreProc")
link("@boolean", "Boolean")
link("@character", "Character")
link("@character.special", "SpecialChar")
link("@comment", "Comment")
link("@constant", "Constant")
link("@constant.builtin", "Constant")
link("@constant.macro", "Macro")
link("@constructor", "Function")
link("@define", "Define")
link("@error", "Error")
link("@exception", "Exception")
link("@field", "Identifier")
link("@float", "Float")
link("@function", "Function")
link("@function.builtin", "Special")
link("@function.call", "Function")
link("@function.macro", "Macro")
link("@include", "Include")
link("@keyword", "Keyword")
link("@keyword.conditional", "Conditional")
link("@keyword.debug", "Debug")
link("@keyword.directive", "PreProc")
link("@keyword.exception", "Exception")
link("@keyword.function", "Keyword")
link("@keyword.import", "Include")
link("@keyword.operator", "Operator")
link("@keyword.return", "Keyword")
link("@keyword.repeat", "Repeat")
link("@label", "Label")
link("@method", "Function")
link("@method.call", "Function")
link("@module", "Type")
link("@namespace", "Type")
link("@number", "Number")
link("@operator", "Operator")
link("@parameter", "Identifier")
link("@property", "Special")
link("@punctuation.bracket", "Delimiter")
link("@punctuation.delimiter", "Delimiter")
link("@punctuation.special", "SpecialChar")
link("@repeat", "Repeat")
link("@string", "String")
link("@string.escape", "SpecialChar")
link("@string.regex", "String")
link("@string.special", "Special")
link("@tag", "Tag")
link("@tag.attribute", "Identifier")
link("@tag.delimiter", "Delimiter")
link("@text", "Normal")
link("@text.danger", "Error")
link("@text.diff.add", "DiffAdd")
link("@text.diff.delete", "DiffDelete")
link("@text.emphasis", "Underlined")
link("@text.note", "Todo")
link("@text.strong", "Statement")
link("@text.uri", "Underlined")
link("@text.warning", "WarningMsg")
link("@type", "Type")
link("@type.builtin", "Type")
link("@type.definition", "Typedef")
link("@type.qualifier", "StorageClass")
link("@variable", "Identifier")
link("@variable.builtin", "Special")

-- A few language/plugin-specific groups that are common in modern setups.
link("@lsp.type.class", "Type")
link("@lsp.type.decorator", "PreProc")
link("@lsp.type.enum", "Type")
link("@lsp.type.enumMember", "Constant")
link("@lsp.type.function", "Function")
link("@lsp.type.interface", "Type")
link("@lsp.type.keyword", "Keyword")
link("@lsp.type.method", "Function")
link("@lsp.type.namespace", "Type")
link("@lsp.type.parameter", "Identifier")
link("@lsp.type.property", "Special")
link("@lsp.type.type", "Type")
link("@lsp.type.typeParameter", "Type")
link("@lsp.type.variable", "Identifier")

-- Terminal colors for integrations that read Vim's terminal palette.
local terminal = {
  palette.ink,
  palette.ink_soft,
  palette.ink_muted,
  palette.ink_faint,
  palette.ink,
  palette.ink_soft,
  palette.ink_muted,
  palette.ink_faint,
  palette.ink_soft,
  "#3a3a3a",
  "#5a5a5a",
  "#7a7a7a",
  "#9a9a9a",
  "#4a4a4a",
  "#6a6a6a",
  palette.paper,
}

for index, color in ipairs(terminal) do
  vim.g["terminal_color_" .. (index - 1)] = color
end
