local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	
	use 'morhetz/gruvbox'

	-- Syntax
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({with_sync = true}) end,
	}

	-- Highlight same words
	use 'RRethy/vim-illuminate'

	-- Status line
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	opt = true
	-- }	
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'


	use 'kylechui/nvim-surround'
	use 'jiangmiao/auto-pairs'
	use 'alvan/vim-closetag'

	-- Formatter
	use 'sbdchd/neoformat'

	-- use 'kyazdani42/nvim-tree.lua'
	use 'preservim/nerdtree'
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


  if packer_bootstrap then
    require('packer').sync()
  end
end)

