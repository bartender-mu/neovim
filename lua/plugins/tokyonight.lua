return {
  'folke/tokyonight.nvim',
  config = function()
    require('tokyonight').setup {
      style = 'night',
      transparent = true,
      transparent_sidebar = true,
      on_highlights = function(hl, c)
        hl.NoiceCmdlinePopup = { bg = c.none }
        hl.NoiceCmdlinePopupBorder = { fg = c.border_highlight }
        -- NvimTree transparency
        hl.NvimTreeNormal = { bg = c.none }
        hl.NvimTreeNormalNC = { bg = c.none }
        hl.NvimTreeWinSeparator = { fg = c.border_highlight, bg = c.none }
        hl.NvimTreeEndOfBuffer = { bg = c.none }
        hl.NvimTreeVertSplit = { bg = c.none }
      end,
    }
    vim.cmd('colorscheme tokyonight')
  end,
}
