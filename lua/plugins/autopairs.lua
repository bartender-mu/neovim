return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = { 'ms-jpq/coq_nvim' },
  config = function()
    local autopairs = require('nvim-autopairs')
    autopairs.setup {
      check_ts = true,
      disable_filetype = { 'TelescopePrompt' },
      fast_wrap = {
        map = '<M-e>',
        chars = { '{', '[', '(', '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
      },
      map_cr = false, -- Disable CR mapping to avoid conflicts with coq.nvim
    }
    local coq = require('coq')
    coq.Now() -- Ensure COQ is started after autopairs
  end,
}
