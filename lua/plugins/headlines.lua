return {
  'lukas-reineke/headlines.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('headlines').setup {
      org = {
        headline_highlights = { 'Headline1', 'Headline2', 'Headline3' },
        codeblock_highlight = 'CodeBlock',
        dash_highlight = 'Dash',
        bullet = '•',
      },
    }
  end,
}
