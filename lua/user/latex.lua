-- vim.cmd([[
-- let g:knap_settings = {
--     \ "textopdfviewerlaunch": "okular --unique %outputfile%",
--     \ "textopdfviewerrefresh": "none",
--     \ "textopdfforwardjump" : "okular --unique %outputfile%'#src:%line% '%srcfile%"
-- \ }

-- ]])

-- local knap = require('knap')
-- local map = vim.keymap.set

-- map({'n', 'v', 'i'}, '<F5>', function() knap.process_once() end)
-- map({'n', 'v', 'i'}, '<F6>', function() knap.close_viewer() end)
-- map({'n', 'v', 'i'}, '<F7>', function() knap.toggle_autopreviewing() end)
-- map({'n', 'v', 'i'}, '<F8>', function() knap.forward_jump() end)


