local fn = vim.fn

local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  use 'folke/tokyonight.nvim'
  use 'ojroques/nvim-hardline'
  use 'max-0406/autoclose.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use 'folke/which-key.nvim'
  use 'ahmedkhalf/project.nvim'
  use 'yorickpeterse/nvim-window'
  use 'smolck/command-completion.nvim'
  use 'tjdevries/train.nvim'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip' 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use {'tzachar/cmp-tabnine', after = 'nvim-cmp', run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp'} -- win
  -- use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'} -- linux

  use 'L3MON4D3/LuaSnip' 
  use 'rafamadriz/friendly-snippets'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
