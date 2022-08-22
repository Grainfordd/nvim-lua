local cmd = vim.cmd
local g = vim.g

cmd([[colorscheme gruvbox]])


-- Syntax configuration
require('nvim-treesitter.configs').setup{
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	-- indent = {enable = true, disable = {'haml'}}

	-- Rainbow Parentheses
	-- rainbow = {
	-- 	enable = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- }
}

require 'nvim-treesitter.install'.compilers = {'clang'}


-- Coc Config

cmd[[
	function! CheckBackspace() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	inoremap <expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"

	inoremap <silent><expr> <c-t>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<c-t>" :
      \ coc#refresh()

]]

-- NeoFormat
-- cmd([[let g:neoformat_enabled_cpp = ['clang-format']]])
-- g.neoformat_enabled_cpp = {'clang-format'}
-- g.neoformat_enabled_python = {'astyle'}
g.neoformat_run_all_formatters = 1
