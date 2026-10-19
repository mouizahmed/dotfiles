return {
  {
    "mason-org/mason.nvim",
    config = true,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright", "gopls", "jdtls", "rust_analyzer", "eslint" },
      })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
          end
          map('n', 'gd', vim.lsp.buf.definition, "Go to definition")
          map('n', 'gD', vim.lsp.buf.declaration, "Go to declaration")
          map('n', '<leader>rn', vim.lsp.buf.rename, "Rename symbol")
          map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, "Code action")
          map('n', '<leader>cf', function() vim.lsp.buf.format({ async = true }) end, "Format file")          map('n', '<leader>d', vim.diagnostic.open_float, "Show diagnostic")
        end,
      })
    end,
  },
}
