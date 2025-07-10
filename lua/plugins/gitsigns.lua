return {
       'lewis6991/gitsigns.nvim',
       config = function()
         require('gitsigns').setup {
           signs = {
             add = { text = '+' },
             change = { text = '~' },
             delete = { text = '_' },
             topdelete = { text = '‾' },
             changedelete = { text = '~' },
           },
         }
         vim.keymap.set('n', '<leader>gb', ':Gitsigns blame_line<CR>', { noremap = true, silent = true }) -- <Space>gb
         vim.keymap.set('n', '<leader>gd', ':Gitsigns diffthis<CR>', { noremap = true, silent = true }) -- <Space>gd
       end,
     }
