local vscode = require("vscode")
local c = require("vscode.colors").get_colors()

vscode.setup({
  transparent = true,
  italic_comments = true,
  underline_links = true,
  group_overrides = { Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true }, }
})
