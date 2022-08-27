require('keymappings')
require('my_plugins')
require('plugins_config')

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.wrap = false

opt.cursorline = true
opt.scrolloff = 10
--opt.colorcolumn = '120'

opt.laststatus = 2
opt.tabstop = 4
opt.shiftwidth = 4

opt.termguicolors = true
opt.mouse = 'a'


