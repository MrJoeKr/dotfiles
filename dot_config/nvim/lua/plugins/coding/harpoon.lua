return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = function()
    local keys = {
      {
        '<leader>a',
        function() require('harpoon'):list():add() end,
        desc = 'Harpoon File',
      },
      {
        '<leader>h',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Quick Menu',
      },
    }

    for i = 1, 9 do
      table.insert(keys, {
        '<leader>' .. i,
        function() require('harpoon'):list():select(i) end,
        desc = 'Harpoon to File ' .. i,
      })
    end

    -- TODO: Think of other shortcuts (conflicting with vim-tmux-nav)
    -- for i, key in ipairs { 'j', 'k', 'l', 'm' } do
    --   table.insert(keys, {
    --     '<C-' .. key .. '>',
    --     function() require('harpoon'):list():select(i) end,
    --     desc = 'Harpoon to File ' .. i,
    --   })
    -- end

    return keys
  end,
}
