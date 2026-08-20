vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('i', 'jj', '<Esc>', { silent = true })

-- Many taken from ThePrimeagen
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('n', 'Q', '<nop>')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- TODO: QUICKFIX list?

vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

--- Drop this when done with downloading plugins (not necessary)
vim.keymap.set('n', '<leader>ms', '<cmd>Lazy sync<cr>', { desc = 'Lazy Sync Plugins' })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
    -- Live search that queries your LSP client while typing
    vim.keymap.set(
      'n',
      '<leader>ws',
      require('fzf-lua').lsp_live_workspace_symbols,
      { desc = 'LSP Workspace Symbols' }
    )
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- Enabled in cmp.lua
    -- vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { desc = "Signature Help" })

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'See line diagnostic' })

    vim.keymap.set(
      'n',
      '[d',
      function() vim.diagnostic.jump { count = -1, float = true } end,
      { desc = 'Previous diagnostic' }
    )
    vim.keymap.set(
      'n',
      ']d',
      function() vim.diagnostic.jump { count = 1, float = true } end,
      { desc = 'Next diagnostic' }
    )
  end,
})

-- Toggle line comment in Normal mode
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, desc = 'Toggle comment line' })

-- Toggle comment on selection in Visual mode
vim.keymap.set('x', '<C-_>', 'gc', { remap = true, desc = 'Toggle comment selection' })
