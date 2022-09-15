local cmd = vim.cmd
local g = vim.g
local opts = {buffer = 0}

-- Theme
-- cmd([[colorscheme gruvbox]])
cmd([[colorscheme nightfox]])

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

-- Formatter
g.neoformat_run_all_formatters = 1

require('neoscroll').setup()


-- StatusLine
-- g.airline_theme='tomorrow'
-- g.airline_powerline_fonts = 1
require('hardline').setup()
require('nvim-surround').setup()

-- Scrollbar

local colors = require('tokyonight.colors').setup()

require('scrollbar').setup({
	handle = {
		color = colors.bg_highlight,
	},
	marks = {
		Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
	}
})

--NVIMTREE
require('nvim-tree').setup({
	view = {
		mappings = {
			list = {
				{key='s', action='vsplit'},
			},
		},
	},
	actions = {
		open_file = {
			quit_on_open = true
		},
	},
})

-- LaTeX
g.vimtex_view_method = 'zathura'
g.vimtex_compiler_method = 'latexmk'
