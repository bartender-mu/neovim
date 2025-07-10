return {
  'neovim/nvim-lspconfig',
  dependencies = { 'ms-jpq/coq_nvim' },
  config = function()
    local lspconfig = require('lspconfig')
    local coq = require('coq')
    lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({
      cmd = { "pylsp" }, -- Ensure pylsp is in $PATH
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { enabled = true },
            flake8 = { enabled = true },
            pylint = { enabled = true }, -- Add pylint for additional linting
          }
        }
      },
      on_init = function(client)
        client.config.settings.pylsp.configurationSources = { "flake8" }
      end
    }))
    lspconfig.yamlls.setup(coq.lsp_ensure_capabilities({
      cmd = { "yaml-language-server", "--stdio" }, -- Ensure yaml-language-server is in $PATH
      settings = {
        yaml = {
          schemas = {
            ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.24.0-standalone-strict/all.json"] = "/*.yaml",
            ["https://json.schemastore.org/bitbucket-pipelines"] = "/bitbucket-pipelines.yml",
          },
        },
      },
    }))
    lspconfig.terraformls.setup(coq.lsp_ensure_capabilities({
      cmd = { "terraform-ls", "serve" }, -- Corrected from tfls
    }))
    lspconfig.ansiblels.setup(coq.lsp_ensure_capabilities({
      cmd = { "ansible-language-server", "--stdio" }, -- Ensure ansible-language-server is in $PATH
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
  end,
}
