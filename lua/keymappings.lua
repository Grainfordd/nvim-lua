local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local g = vim.g
local noremapSilent = {noremap = true, silent = true}
local noremap = {noremap = true, silent = true}

map('n', '<Space>', '<NOP>', noremapSilent)
g.mapleader = ' '


map('n', '<Leader>w', ':w<CR> | :Neoformat<CR>', noremapSilent)
map('n', '<Leader>q', ':q<CR>', noremapSilent)
map('n', '<Enter>', 'o<ESC>', noremap)
map('n', '<C-n>', ':bnext<CR>', noremap)
map('n', '<K>', '10<k>', noremap)
map('n', '<J>', '10<j>', noremap)



-- NerdTree
map('n', '<Leader>nt', ':NERDTreeFind<CR>', noremap)
cmd([[let NERDTreeQuitOnOpen=1]])

-- EasyMotion
map('n', '<Leader>s', '<Plug>(easymotion-s2)', noremap)

map('n', '<Leader>r', ':!g++ -Wall % && ./a.out<CR>', noremapSilent)

map('n', 'J', '5j', noremapSilent)
map('n', 'K', '5k', noremapSilent)


