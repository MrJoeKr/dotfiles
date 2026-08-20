return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'macchiato',
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
    config = function() vim.cmd.colorscheme 'catppuccin-macchiato' end,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = true,
    config = function()
      require('kanagawa').setup {
        transparent = true,
        theme = 'dragon', -- "wave", "dragon", "lotus"
      }

      vim.cmd 'colorscheme kanagawa'
    end,
  },
  {
    'embark-theme/vim',
    name = 'embark',
    lazy = true,
  },
}
