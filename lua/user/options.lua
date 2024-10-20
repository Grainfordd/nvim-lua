local opt = vim.opt

opt.number = true -- Mostrar número de línea
opt.relativenumber = true -- Mostrar lineas relativa a la actual
opt.wrap = false -- No dividir linea si es muy larga

opt.cursorline = true -- Mostrar linea actual
opt.scrolloff = 10 -- Mantener el cursor 10 lineas alejado de arriba y abajo
opt.sidescrolloff = 10
opt.colorcolumn = '120' -- mostrar una linea vertical en el caracter 120

opt.laststatus = 2 -- No sé
opt.tabstop = 4 -- Insertar 4 espacios al apretar TAB
opt.shiftwidth = 4 -- Número de espacios insertados en cada indentación

opt.termguicolors = true
opt.mouse = 'a' -- Permite usar el mouse en neovim

opt.completeopt = {'menuone', 'noselect'}
opt.fileencoding = 'utf-8'
opt.smartcase = true
opt.ignorecase = true

opt.updatetime = 300 -- Completado más rápido 4000 defuault
opt.mouse = 'a'



vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])
vim.cmd([[autocmd TermOpen * startinsert]])

-- vim.o.shell = 'powershell.exe'

vim.notify = require('notify')
-- require("notify")("My super important message")
