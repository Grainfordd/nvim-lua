local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	
	-- Themes
	use 'morhetz/gruvbox'
	use 'EdenEast/nightfox.nvim'

	-- Syntax
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({with_sync = true}) end,
	}

	-- Highlight same words
	use 'RRethy/vim-illuminate'

	-- Status line
	use 'ojroques/nvim-hardline'

	use 'kylechui/nvim-surround'
	use 'jiangmiao/auto-pairs'
	use 'alvan/vim-closetag'

	-- Formatter
	use 'sbdchd/neoformat'

	use 'kyazdani42/nvim-tree.lua'
	-- use 'preservim/nerdtree'
	use 'ryanoasis/vim-devicons'
	use 'christoomey/vim-tmux-navigator'
	use 'easymotion/vim-easymotion'

	
	-- Tabs
	use 'ap/vim-buftabline'

	-- Comentarios
	use 'tpope/vim-commentary'

	--Html
	use 'mattn/emmet-vim'

	-- Mostrar lineas en la identacion
	use 'yggdroot/indentline'

	use {'neoclide/coc.nvim', branch = 'release'}

	-- jueguitos
	use 'alec-gibson/nvim-tetris'
	use 'seandewar/nvimesweeper'
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
	use 'nvim-lua/plenary.nvim'

	-- LaTeX
	use 'lervag/vimtex'
	use 'xuhdev/vim-latex-live-preview'



  if packer_bootstrap then
    require('packer').sync()
  end
end)

