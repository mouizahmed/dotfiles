return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<S-h>", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous tab" },
    { "<S-l>", "<cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
  },
  config = function()
    require("bufferline").setup({
      options = {
        separator_style = "slant",
        close_command = function(buf) Snacks.bufdelete(buf) end,
        offsets = {
          { filetype = "neo-tree", text = "File Explorer", highlight = "Directory", separator = true },
        },
      },
    })
  end,
}
