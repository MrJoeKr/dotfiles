local util = require('lspconfig.util')

return {
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    -- Prefer the outer .git root over a nested go.mod so a monorepo with
    -- go.mod living in a subdirectory (e.g. ./backend) still gets a single
    -- gopls instance instead of one per root marker found.
    local root = util.root_pattern('.git')(fname) or util.root_pattern('go.work', 'go.mod')(fname)
    on_dir(root)
  end,
  settings = {
    gopls = {
      semanticTokens = true,
    },
  },
}
