return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    ---@module "fzf-lua"
    ---@type function|fzf-lua.Config|{}
    opts = {},
    keys = {
      -- Find files in the project
      { '<leader>pf', '<cmd>FzfLua files<cr>', desc = 'Find Files' },
      { '<C-p>', '<cmd>FzfLua git_files<cr>', desc = 'Find Git Files' },
      -- Live grep text search across the project
      { '<leader>ps', '<cmd>FzfLua live_grep<cr>', desc = 'Live Grep' },
      -- View recent files history
      { '<leader>ph', '<cmd>FzfLua oldfiles<cr>', desc = 'Recent Files' },
    },
  },
}
