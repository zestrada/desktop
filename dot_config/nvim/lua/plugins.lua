local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- first do
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- Then, nvim :PackerInstall
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use
  -- add you plugins here like:
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'anott03/nvim-lspinstall'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use 'jremmen/vim-ripgrep'
  use 'tomasiser/vim-code-dark'
  use 'github/copilot.vim' -- requires node.js
  end
)

 vim.g.colors_name = 'codedark'
---- local configs = require'nvim-treesitter.configs'
 --configs.setup {
 --  -- ensure_installed = "maintained",
 --  highlight = {
 --    enable = true,
 --  }
 --}
local lspconfig = require'lspconfig'
local completion = require'completion'
local function custom_on_attach(client)
  print('Attaching to ' .. client.name)
  completion.on_attach(client)
end
local default_config = {
  on_attach = custom_on_attach,
}
-- setup language servers here
lspconfig.tsserver.setup(default_config)
