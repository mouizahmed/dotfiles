return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      default_component_configs = {
        git_status = {
          symbols = {
            added = "A",
            deleted = "D",
            modified = "M",
            renamed = "R",
            untracked = "U",
            ignored = "",
            unstaged = "",
            staged = "S",
            conflict = "C",
          },
        },
      },
    })
    vim.keymap.set('n', '<C-n>', '<cmd>Neotree filesystem reveal left toggle<CR>', { desc = "Toggle file tree" })
  end,
}
