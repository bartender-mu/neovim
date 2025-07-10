return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = { 'nvim-treesitter/nvim-treesitter-context' },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'python', 'yaml', 'bash', 'json', 'dockerfile', 'hcl', 'lua' },
      highlight = { enable = true },
      indent = { enable = true, disable = { 'org' } },
      -- Enable bracket matching with vertical line
      matchup = {
        enable = true,
      },
    }
    -- Enable treesitter-context for vertical line context
    require('treesitter-context').setup {
      enable = true,
      max_lines = 0, -- No limit on context lines
      patterns = { -- Match patterns for languages
        default = { 'class', 'function', 'method', 'block', 'for', 'while', 'if', 'switch', 'case' },
        yaml = { 'block_mapping_pair', 'block_sequence_item' },
        python = { 'function_definition', 'class_definition' },
        hcl = { 'block', 'attribute' },
      },
    }
  end,
}
