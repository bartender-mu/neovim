return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('ibl').setup {
      indent = {
        char = '│', -- Vertical line character
        tab_char = '│',
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },
      exclude = {
        filetypes = { 'help', 'dashboard', 'packer', 'NvimTree' },
        buftypes = { 'terminal', 'nofile' },
      },
    }
  end,
}
