local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
})

lsp.clangd.setup{
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = true,
            virtual_text = true,
            signs = true,
            update_in_insert = true,
        })
        if client.server_capabilities.documentHighlightProvider then
            vim.cmd [[
            hi! LspReferenceRead cterm=bold ctermbg=235
            hi! LspReferenceText cterm=bold ctermbg=235
            hi! LspReferenceWrite cterm=bold ctermbg=235
            ]]
            vim.api.nvim_create_augroup('lsp_document_highlight', {})
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                group = 'lsp_document_highlight',
                buffer = 0,
                callback = vim.lsp.buf.document_highlight,
            })
            vim.api.nvim_create_autocmd('CursorMoved', {
                group = 'lsp_document_highlight',
                buffer = 0,
                callback = vim.lsp.buf.clear_references,
            })
        end
    end
}

require'lspconfig'.cmake.setup{
    cmd = { "cmake-language-server" },
    filetypes = { "cmake" , "CMakeLists.txt"},
    init_options = {
        buildDirectory = "build"
    },
    single_file_support = true,
}
