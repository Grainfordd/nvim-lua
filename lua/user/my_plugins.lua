local fn = vim.fn

-- Instalar packer automáticamente si no está instalado
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSRAP = fn.system({
	'git',
	'clone',
	'--depth',
	'1',
	'https://github.com/wbthomason/packer.nvim',
	install_path
})
  vim.cmd [[packadd packer.nvim]]
end

-- Auto-comando que reinicia neovim cuando se guarda la carpeta de plugins
vim.cmd[[
	augroup packer_user_config
	autocmd!
	autocmd BufWritePost my_plugins.lua source <afile> | PackerSync
	augroup end
]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'

	-- Themes
	use 'EdenEast/nightfox.nvim'
	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'

	-- Syntax
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({with_sync = true})
			ts_update()
		end,
	}

	use 'p00f/nvim-ts-rainbow'
	use 'nvim-treesitter/nvim-treesitter-refactor'

	-- Highlight same words
	use 'RRethy/vim-illuminate'

	-- Notificaciones
	use 'rcarriga/nvim-notify'

	use 'akinsho/toggleterm.nvim'
	use 'folke/which-key.nvim'

	-- Status line
	-- use 'ojroques/nvim-hardline'
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'

	use 'kylechui/nvim-surround'
	use 'jiangmiao/auto-pairs'
	use 'alvan/vim-closetag'

	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	use 'christoomey/vim-tmux-navigator'
	use 'easymotion/vim-easymotion'

	-- Tabs
	-- use 'ap/vim-buftabline'

	-- Comentarios
	use 'tpope/vim-commentary'

	-- Html
	use 'mattn/emmet-vim'

	-- Mostrar lineas en la identacion
	use 'yggdroot/indentline'

	-- use {'neoclide/coc.nvim', branch = 'release'}

	-- jueguitos
	use 'ThePrimeagen/vim-be-good'

	-- Terminal
	use 'voldikss/vim-floaterm'


	-- Scrollbar
	use 'petertriho/nvim-scrollbar'
	use 'karb94/neoscroll.nvim'
	use 'folke/tokyonight.nvim'

	-- color
	use 'NvChad/nvim-colorizer.lua'
	use 'ap/vim-css-color'

	-- Fuzzy finder
	use 'nvim-telescope/telescope.nvim'


	-- LaTeX
	use 'lervag/vimtex'
	use 'frabjous/knap'


	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'

	use 'neovim/nvim-lspconfig'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets' -- Muchos snippets para usar

	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'


  if PACKER_BOOTSRAP then
    require('packer').sync()
  end
end)

