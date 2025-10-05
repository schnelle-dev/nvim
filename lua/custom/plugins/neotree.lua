return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
  },
  keys = {
    { '<leader>f', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    { 'f', '<cmd>Neotree<cr>', desc = 'NeoTree' },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
        },
        group_empty_dirs = true,
      },
    }
  end,
}