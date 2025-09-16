-- vedic-haritha.lua
-- A beautiful Neovim color scheme inspired by Vedic nature and earthy greens

local M = {}

-- Color palette
local colors = {
	-- Base colors
	bg = "#14281e",
	fg = "#d6d3c4",

	-- Terminal colors (0-15)
	black = "#14281e",
	red = "#781e1e",
	green = "#3fa34d",
	yellow = "#b48c46",
	blue = "#467798",
	magenta = "#993333",
	cyan = "#4db6ac",
	white = "#d6d3c4",

	bright_black = "#2a3b30",
	bright_red = "#d98e32",
	bright_green = "#1db954",
	bright_yellow = "#ff8733",
	bright_blue = "#4aa382",
	bright_white_cream = "#e0c080",
	bright_orange = "#ff6600",
	pure_white = "#ffffff",

	-- Additional semantic colors
	none = "NONE",

	-- UI colors derived from your palette
	bg_dark = "#0f1e16",
	bg_light = "#1a3025",
	bg_lighter = "#2a3b30",

	comment = "#4aa382",
	selection = "#2a3b30",
	visual = "#467798",
	search = "#b48c46",
	match_paren = "#ff8733",

	-- Status line
	statusline_bg = "#2a3b30",
	statusline_fg = "#d6d3c4",

	-- Errors and warnings
	error = "#781e1e",
	warning = "#ff8733",
	info = "#4db6ac",
	hint = "#4aa382",
}

-- Theme setup
local function setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.g.colors_name = "vedic-haritha"

	local groups = {
		-- Base groups
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_light },
		NormalNC = { fg = colors.fg, bg = colors.bg },

		-- UI Elements
		ColorColumn = { bg = colors.bg_light },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = colors.bg_light },
		CursorColumn = { bg = colors.bg_light },
		CursorLineNr = { fg = colors.bright_yellow, bold = true },
		LineNr = { fg = colors.bright_black },

		-- Visual and Selection
		Visual = { bg = colors.visual },
		VisualNOS = { bg = colors.visual },
		Search = { fg = colors.bg, bg = colors.search },
		IncSearch = { fg = colors.bg, bg = colors.bright_yellow },

		-- Splits and Windows
		WinSeparator = { fg = colors.bright_black },
		VertSplit = { fg = colors.bright_black },

		-- Statusline
		StatusLine = { fg = colors.statusline_fg, bg = colors.statusline_bg },
		StatusLineNC = { fg = colors.comment, bg = colors.bg_light },

		-- Tabline
		TabLine = { fg = colors.comment, bg = colors.bg_light },
		TabLineFill = { bg = colors.bg_light },
		TabLineSel = { fg = colors.fg, bg = colors.bg },

		-- Popup Menu
		Pmenu = { fg = colors.fg, bg = colors.bg_light },
		PmenuSel = { fg = colors.bg, bg = colors.green },
		PmenuSbar = { bg = colors.bg_lighter },
		PmenuThumb = { bg = colors.comment },

		-- Messages
		ErrorMsg = { fg = colors.error, bold = true },
		WarningMsg = { fg = colors.warning, bold = true },
		ModeMsg = { fg = colors.green, bold = true },
		MoreMsg = { fg = colors.cyan, bold = true },

		-- Syntax Highlighting
		Comment = { fg = colors.comment, italic = true },

		Constant = { fg = colors.bright_red },
		String = { fg = colors.green },
		Character = { fg = colors.green },
		Number = { fg = colors.bright_red },
		Boolean = { fg = colors.bright_red },
		Float = { fg = colors.bright_red },

		Identifier = { fg = colors.cyan },
		Function = { fg = colors.blue },

		Statement = { fg = colors.magenta },
		Conditional = { fg = colors.magenta },
		Repeat = { fg = colors.magenta },
		Label = { fg = colors.magenta },
		Operator = { fg = colors.bright_yellow },
		Keyword = { fg = colors.magenta },
		Exception = { fg = colors.red },

		PreProc = { fg = colors.yellow },
		Include = { fg = colors.magenta },
		Define = { fg = colors.magenta },
		Macro = { fg = colors.cyan },
		PreCondit = { fg = colors.yellow },

		Type = { fg = colors.bright_green },
		StorageClass = { fg = colors.bright_green },
		Structure = { fg = colors.bright_green },
		Typedef = { fg = colors.bright_green },

		Special = { fg = colors.bright_orange },
		SpecialChar = { fg = colors.bright_orange },
		Tag = { fg = colors.bright_orange },
		Delimiter = { fg = colors.fg },
		SpecialComment = { fg = colors.comment, bold = true },
		Debug = { fg = colors.red },

		-- Diff
		DiffAdd = { fg = colors.green, bg = colors.bg_light },
		DiffChange = { fg = colors.yellow, bg = colors.bg_light },
		DiffDelete = { fg = colors.red, bg = colors.bg_light },
		DiffText = { fg = colors.bright_yellow, bg = colors.bg_light },

		-- Git Signs (if using gitsigns.nvim)
		GitSignsAdd = { fg = colors.green },
		GitSignsChange = { fg = colors.yellow },
		GitSignsDelete = { fg = colors.red },

		-- Treesitter
		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { fg = colors.red },
		["@variable.parameter"] = { fg = colors.bright_white_cream },
		["@variable.member"] = { fg = colors.cyan },

		["@constant"] = { fg = colors.bright_red },
		["@constant.builtin"] = { fg = colors.bright_red },
		["@constant.macro"] = { fg = colors.cyan },

		["@module"] = { fg = colors.bright_white_cream },
		["@label"] = { fg = colors.bright_orange },

		["@string"] = { fg = colors.green },
		["@string.regexp"] = { fg = colors.bright_green },
		["@string.escape"] = { fg = colors.bright_orange },

		["@character"] = { fg = colors.green },
		["@character.special"] = { fg = colors.bright_orange },

		["@number"] = { fg = colors.bright_red },
		["@number.float"] = { fg = colors.bright_red },

		["@boolean"] = { fg = colors.bright_red },

		["@annotation"] = { fg = colors.yellow },
		["@attribute"] = { fg = colors.cyan },
		["@error"] = { fg = colors.error },

		["@keyword"] = { fg = colors.magenta },
		["@keyword.function"] = { fg = colors.magenta },
		["@keyword.return"] = { fg = colors.magenta },
		["@keyword.operator"] = { fg = colors.bright_yellow },

		["@operator"] = { fg = colors.bright_yellow },

		["@punctuation.delimiter"] = { fg = colors.fg },
		["@punctuation.bracket"] = { fg = colors.fg },
		["@punctuation.special"] = { fg = colors.bright_orange },

		["@comment"] = { fg = colors.comment, italic = true },
		["@comment.todo"] = { fg = colors.warning, bold = true },
		["@comment.warning"] = { fg = colors.warning, bold = true },
		["@comment.note"] = { fg = colors.info, bold = true },
		["@comment.error"] = { fg = colors.error, bold = true },

		["@type"] = { fg = colors.bright_green },
		["@type.builtin"] = { fg = colors.bright_green },
		["@type.qualifier"] = { fg = colors.magenta },

		["@function"] = { fg = colors.blue },
		["@function.builtin"] = { fg = colors.cyan },
		["@function.macro"] = { fg = colors.cyan },
		["@function.method"] = { fg = colors.blue },

		["@constructor"] = { fg = colors.bright_green },

		["@tag"] = { fg = colors.red },
		["@tag.attribute"] = { fg = colors.yellow },
		["@tag.delimiter"] = { fg = colors.fg },

		-- LSP
		LspReferenceText = { bg = colors.bg_lighter },
		LspReferenceRead = { bg = colors.bg_lighter },
		LspReferenceWrite = { bg = colors.bg_lighter },

		-- Diagnostics
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.hint },

		DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

		-- Telescope (if using)
		TelescopeNormal = { fg = colors.fg, bg = colors.bg_light },
		TelescopeBorder = { fg = colors.bright_black, bg = colors.bg_light },
		TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_lighter },
		TelescopePromptBorder = { fg = colors.bright_black, bg = colors.bg_lighter },
		TelescopePromptTitle = { fg = colors.bg, bg = colors.green },
		TelescopePreviewTitle = { fg = colors.bg, bg = colors.blue },
		TelescopeResultsTitle = { fg = colors.bg, bg = colors.cyan },
		TelescopeSelection = { fg = colors.fg, bg = colors.bg_lighter },
		TelescopeMatching = { fg = colors.bright_yellow, bold = true },

		-- Which-key (if using)
		WhichKey = { fg = colors.cyan },
		WhichKeyGroup = { fg = colors.green },
		WhichKeyDesc = { fg = colors.fg },
		WhichKeySeperator = { fg = colors.comment },
		WhichKeyFloat = { bg = colors.bg_light },

		-- Neo-tree (if using)
		NeoTreeNormal = { fg = colors.fg, bg = colors.bg_light },
		NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg_light },

		-- Indent Blankline (if using)
		IndentBlanklineChar = { fg = colors.bright_black },
		IndentBlanklineContextChar = { fg = colors.comment },
	}

	-- Apply highlights
	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

-- Setup function for the colorscheme
function M.setup(opts)
	opts = opts or {}
	setup()
end

-- Load the colorscheme
function M.load()
	setup()
end

return M
