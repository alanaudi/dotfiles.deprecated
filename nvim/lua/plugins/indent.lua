local opt = vim.opt

opt.list = true
-- opt.listchars:append("space:•")
-- opt.listchars:append("eol:↴")

require("indent_blankline").setup {
  char = "●",
  space_char_blankline = " ",
  buftype_exclude = {"terminal"},
  show_current_context = true, -- TODO: fix
}
