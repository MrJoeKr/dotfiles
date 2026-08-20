-- Inspired from: https://github.com/ruicsh/nvim-config/blob/main/lua/plugins/mason.lua#L67

-- https://mason-registry.dev/registry/list
local PACKAGES = {
  -- LSP
  'css_variables',
  'cssls',
  'cssmodules_ls',
  'dockerls',
  'eslint',
  -- 'harper_ls',
  'html',
  'jsonls',
  'lua_ls',
  'pyright',
  'tailwindcss',
  'ts_query_ls',
  'ts_ls',
  'yamlls',
  -- Format
  'ruff',
  'stylua',
  -- Lint
  'flake8',
}

return {
  {
    -- Install LSP servers and 3rd-party tools
    -- https://github.com/mason-org/mason.nvim
    'mason-org/mason.nvim',
    opts = {},
  },
  {
    -- Bridge between mason.nvim and lspconfig
    -- https://github.com/mason-org/mason-lspconfig.nvim
    'mason-org/mason-lspconfig.nvim',
    opts = {},

    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
  },
  {
    -- Install and upgrade 3rd-party tools managed by mason.nvim
    -- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = function()
      local packages = vim.tbl_deep_extend('force', {}, PACKAGES)

      return {
        ensure_installed = packages,
        integrations = {
          ['mason-lspconfig'] = true,
          ['mason-null-ls'] = false,
          ['mason-nvim-dap'] = false,
        },
      }
    end,

    dependencies = {
      'mason-org/mason.nvim',
      'mason-org/mason-lspconfig.nvim',
    },
  },
}
