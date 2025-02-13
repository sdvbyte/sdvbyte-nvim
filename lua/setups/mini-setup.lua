local animate = require("mini.animate")
local comment = require("mini.comment")
local cursorwords = require("mini.cursorword")
local diff = require("mini.diff")
local indentscope = require("mini.indentscope")

animate.setup()
comment.setup({
  mappings = {
    comment = "gc",
    comment_leint = "gcc",
    comment_visual = "gc",
    textobject = "gc"
  }
})
cursorwords.setup({ delay = 100 })
diff.setup({
  view = { style = "sign" }
})
indentscope.setup()
