return {
  'nvim-orgmode/orgmode',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('orgmode').setup {
      org_agenda_files = { '~/org/*.org' },
      org_default_notes_file = '~/org/notes.org',
      mappings = {
        global = {
          org_agenda = '<leader>oa', -- <Space>oa
          org_capture = '<leader>oc', -- <Space>oc
        },
        org = {
          org_toggle_heading = '<leader>oh', -- <Space>oh
          org_toggle_checkbox = '<leader>ox', -- <Space>ox
        },
      },
    }
  end,
}
