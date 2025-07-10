return {
       'mfussenegger/nvim-lint',
       event = { 'BufReadPre', 'BufNewFile' },
       config = function()
         require('lint').linters_by_ft = {
           yaml = { 'yamllint' },
           terraform = { 'tflint' },
           python = { 'flake8' },
         }
         vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
           callback = function()
             require('lint').try_lint()
           end,
         })
         vim.keymap.set('n', '<leader>ll', ':lua require("lint").try_lint()<CR>', { noremap = true, silent = true }) -- <Space>ll
       end,
     }
