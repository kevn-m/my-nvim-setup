return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        PATH = "append",
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      -- Add this to see if the LSP is starting
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          vim.notify("LSP Started!")
        end,
      })

      lspconfig.solargraph.setup({
        cmd = { "solargraph", "stdio" },
        root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
        file_types = { "ruby" },
        settings = {
          solargraph = {
            diagnostics = true,
            completion = true,
            formatting = true,
            useBundler = false,
          }
        },
        init_options = {
          formatting = true
        },
        -- Add this to force start the LSP
        autostart = true,
        -- Add this for more debugging info
        on_attach = function(client, bufnr)
          vim.notify("Solargraph attached!")
        end,
      })

      -- :h vim.lsp.buf to see what the functions are
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    end
  }
}
