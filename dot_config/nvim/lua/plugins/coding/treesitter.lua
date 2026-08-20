return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  version = false,
  build = ':TSUpdate',
  opts = {
    auto_install = true,
    ensure_installed = {
      'help',
      'bash',
      'c',
      'diff',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'lua',
      'luadoc',
      'luap',
      'markdown',
      'markdown_inline',
      'printf',
      'python',
      'query',
      'regex',
      'toml',
      'tsx',
      'typescript',
      'vim',
      'vimdoc',
      'xml',
      'yaml',
    },
    indent = { enable = true },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    folds = { enable = true },
  },

  config = function(_, opts)
    local TS = require 'nvim-treesitter'
    TS.setup(opts)
  end,
}
