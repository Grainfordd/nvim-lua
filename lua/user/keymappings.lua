local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local g = vim.g
local noremapSilent = {noremap = true, silent = true}
local noremap = {noremap = true, silent = true}

map('n', '<Space>', '<NOP>', noremapSilent)
g.mapleader = ' '


map('n', '<Leader>q', ':q<CR>', noremapSilent)
map('n', '<Leader>w', ':w<CR>', noremapSilent)
map('n', '<Enter>', 'o<ESC>', noremap)
map('n', '<C-n>', ':bnext<CR>', noremap)
map('n', '<K>', '10<k>', noremap)
map('n', '<J>', '10<j>', noremap)
map('n', ';', 'A;<ESC>', noremap)


-- Move betwenn buffers
map('n', '<S-h>', ':bprevious<CR>', noremapSilent)
map('n', '<S-l>', ':bnext<CR>', noremapSilent)
map('n', '<S-w>', ':bd<CR>', noremapSilent)

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', noremap)

-- EasyMotion
map('n', '<Leader>s', '<Plug>(easymotion-s2)', noremap)

-- Compilación

function CompileCode()
	extension = vim.fn.expand('%:e')
	vim.cmd('w')
	vim.cmd('below split')

	codigo = string.format("terminal %s", "python3 %")
	if extension == "py" then
		vim.cmd(codigo)

	elseif extension == "f90" or extension == "f95" then
		vim.cmd("terminal gfortran -Wall % && ./a.out")

	-- elseif extension == "cpp" or extension == "g++" then 
	-- 	vim.cmd("terminal g++ -Wall % && ./a.out")
	--
	elseif extension == "cpp" or extension == "g++" then 
		vim.cmd("terminal g++ % -larmadillo  && ./a.out")

	elseif extension == "cpp" or extension == "g++" then 
		vim.cmd("terminal g++ -Wall % && ./a.out")
	elseif extension == "jl" then
		vim.cmd("terminal julia %") elseif extension == "m" then
		vim.cmd("terminal octave %")
	elseif extension == "c" then
		vim.cmd("terminal gcc -Wall % -lm && ./a.out")
	elseif extension == "js" then
		vim.cmd("terminal node %")
	end

	-- vim.cmd(codigo)
	-- vim.cmd("terminal python3 %")
	vim.cmd('resize 10')
end

vim.api.nvim_create_user_command('CompileCode', CompileCode, {})
-- vim.api.nvim_create_user_command('CompilePython', OpenTermBelow, {"python3 %<CR>"})

map('n', '<Leader>r', ':term g++ -Wall % && ./a.out<CR>', noremapSilent)
-- map('n', '<Leader>f', ':term gfortran -Wall % && ./a.out<CR>', noremapSilent)
map('n', '<Leader>f', ':CompileCode<CR>', noremapSilent)
-- map('n', '<Leader>p', ':term python3 %<CR>', noremapSilent)
map('n', '<Leader>p', ':CompilePython<CR>', noremapSilent)



map('n', 'J', '5j', noremapSilent)
map('n', 'K', '5k', noremapSilent)

-- Latex
map('n', '<Leader>,', ':VimtexCompile<CR>', noremapSilent)
