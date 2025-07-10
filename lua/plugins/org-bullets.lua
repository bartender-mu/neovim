return {
  'nvim-orgmode/org-bullets.nvim',
  dependencies = { 'nvim-orgmode/orgmode' },
  config = function()
    require('org-bullets').setup {
      symbols = { '◉', '○', '✸', '✿' }, -- Customize bullet symbols
    }
  end,
}
