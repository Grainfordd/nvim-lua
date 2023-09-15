local cmd = vim.cmd
local g = vim.g
local opts = {buffer = 0}


-- Theme
-- cmd([[colorscheme gruvbox-material]])
cmd([[colorscheme nightfox]])

-- Syntax configuration
require('nvim-treesitter.configs').setup{
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	-- indent = {enable = true, disable = {'haml'}}
	rainbow = {
		enable = true,
		extendend_mode = true,
		max_file_lines = nil,

	}
}

require 'nvim-treesitter.install'.compilers = {'clang'}

-- Formatter
g.neoformat_run_all_formatters = 1

require('neoscroll').setup({
	sections = {
		lualine_a = {
			'buffers',
			show_filename_only = true,
			mode = 0
		}
	}
})


require('lualine').setup()
require('bufferline').setup({
	options = {
		hover = {
			enabled = true,
			delay = 200,
			reveal = {'close'}
		},
		separator_style = 'slope',

	}
})
-- StatusLine
-- g.airline_theme='tomorrow'
-- g.airline_powerline_fonts = 1
-- require('hardline').setup()
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
	actions = {
		open_file = {
			quit_on_open = true
		},
	},
})

-- LaTeX
g.vimtex_view_method = 'zathura'
g.vimtex_compiler_method = 'latexmk'

require('toggleterm').setup()

-- LSPCONFIG
require('mason').setup()
require('mason-lspconfig').setup()

-- local capabilities = vim.lsp.protocol.make_client_capabalities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config



lsp_defaults.capabilities = vim.tbl_deep_extend(
	'force',
	lsp_defaults.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.lua_ls.setup({})
lspconfig.pyright.setup{}
lspconfig.fortls.setup{}
lspconfig.texlab.setup{}

-- Snippets
require('luasnip.loaders.from_vscode').lazy_load()
