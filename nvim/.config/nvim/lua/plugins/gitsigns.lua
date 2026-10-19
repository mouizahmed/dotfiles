return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function(buf)
      local gs = require("gitsigns")
      local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
      end
      map('n', ']h', function() gs.nav_hunk("next") end, "Next change")
      map('n', '[h', function() gs.nav_hunk("prev") end, "Previous change")
      map('n', '<leader>gp', gs.preview_hunk_inline, "Preview change inline")
      map('n', '<leader>gs', gs.stage_hunk, "Stage/unstage change")
      map('n', '<leader>gr', gs.reset_hunk, "Undo change")
      map('v', '<leader>gs', function() gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, "Stage selected lines")
      map('v', '<leader>gr', function() gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, "Undo selected lines")
      map('n', '<leader>gR', gs.reset_buffer, "Undo all changes in file")
      map('n', '<leader>gb', gs.blame_line, "Blame line")
    end,
  },
}
