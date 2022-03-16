local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.html.setup{
    capabilities=capabilities,
    on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    end
}

require'lspconfig'.cssls.setup{
    capabilities=capabilities,
    on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    end
}

require'lspconfig'.tsserver.setup{
    capabilities=capabilities,
    on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {buffer=0})
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    end
}

vim.opt.completeopt={"menu", "menuone", "noselect"}

  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    experimental = {
        ghost_text = true,
    },
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
      ["<C-y>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
      },

      ["<C-space>"] = cmp.mapping.complete();

    },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer', keyword_length = 5},
    })

  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
      { name = 'buffer' },
    })
  })
