-- add indentation guides --

return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    local indent_blankline = require("indent_blankline")

    indent_blankline.setup ({
      show_end_of_line = true,
      show_current_context = true,
      show_current_context_start = true,
    })
  end,
}
