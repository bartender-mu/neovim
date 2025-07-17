return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'ms-jpq/coq_nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local coq = require('coq')

    -- Setup Mason for automatic LSP installation
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = {
        'pylsp',
        'yamlls',
        'terraformls',
        'ansiblels',
        'ts_ls', -- Added JavaScript/TypeScript LSP
      },
      automatic_installation = true,
    }

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Python LSP
    lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({
      cmd = { "pylsp" },
      capabilities = capabilities,
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { enabled = true },
            flake8 = { enabled = true },
            pylint = { enabled = true },
          }
        }
      },
      on_init = function(client)
        client.config.settings.pylsp.configurationSources = { "flake8" }
      end
    }))

    -- YAML LSP
    lspconfig.yamlls.setup(coq.lsp_ensure_capabilities({
      cmd = { "yaml-language-server", "--stdio" },
      capabilities = capabilities,
      settings = {
        yaml = {
          schemas = {
            ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.24.0-standalone-strict/all.json"] = "/*.yaml",
            ["https://json.schemastore.org/bitbucket-pipelines"] = "/bitbucket-pipelines.yml",
          },
        },
      },
    }))

    -- Terraform LSP
    lspconfig.terraformls.setup(coq.lsp_ensure_capabilities({
      cmd = { "terraform-ls", "serve" },
      capabilities = capabilities,
    }))

    -- Ansible LSP
    lspconfig.ansiblels.setup(coq.lsp_ensure_capabilities({
      cmd = { "ansible-language-server", "--stdio" },
      capabilities = capabilities,
      settings = {
        ansible = {
          ansible = {
            path = "ansible",
          },
          executionEnvironment = {
            enabled = false,
          },
          python = {
            interpreterPath = "python3",
          },
          validation = {
            enabled = true,
            linter = {
              enabled = true,
              path = "ansible-lint",
            },
          },
        },
      },
      filetypes = { "yaml", "yaml.ansible" },
    }))

    -- JavaScript/TypeScript LSP
    lspconfig.ts_ls.setup(coq.lsp_ensure_capabilities({
      cmd = { "typescript-language-server", "--stdio" },
      capabilities = capabilities,
      settings = {
        javascript = {
          inlayHints = {
            includeInlayParameterNameHints = 'all',
          },
        },
        typescript = {
          inlayHints = {
            includeInlayParameterNameHints = 'all',
          },
        },
      },
    }))

    -- Telescope keymap for definitions
    vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
  end,
}
