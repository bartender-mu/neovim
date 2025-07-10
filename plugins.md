
layout: pagetitle: Pluginspermalink: /plugins/
This page lists the plugins used in the Neovim configuration, with a focus on lazygit.nvim for Git operations.
Plugin List

lazygit.nvim: Launches lazygit TUI with <Leader>gg for staging (s), committing (c), and pushing (P).
vim-fugitive: Git commands like :G status for advanced Git operations.
coq.nvim: Autocompletion with LSP and snippets, triggered by <C-Space>.
surround-ui.nvim: Text manipulation with <Space>s for adding/deleting/changing surrounds.
arena.nvim: Recent file navigation with <Space>ab, supports YAML, Terraform, Org files.
nvim-orgmode: Task management with <Space>oa (agenda), <Space>oc (capture).
nvim-treesitter: Syntax highlighting for Python, YAML, Bash, JSON, Dockerfile, HCL, Lua.
nvim-lspconfig: LSP for pylsp, terraformls, ansiblels, yamlls.
vim-tmux-navigator: Seamless tmux navigation with <C-h/j/k/l>.
Others: vim-airline, tokyonight, noice.nvim, nvim-tree, yaml-companion, vimkubectl.

Lazygit Usage

Open: <Leader>gg
Stage: s (hunks), u (unstage)
Commit: c, write message, <Enter>
Push: P
Branch: b to create/switch
Use with arena.nvim to navigate files and commit changes.

See keybindings for more details.
