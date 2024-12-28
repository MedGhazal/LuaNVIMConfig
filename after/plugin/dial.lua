dial = require('dial.map')

vim.keymap.set("n", "<C-i>", dial.inc_normal(), {noremap = true})
vim.keymap.set("n", "<C-x>", dial.dec_normal(), {noremap = true})
vim.keymap.set("v", "<C-i>", dial.inc_visual(), {noremap = true})
vim.keymap.set("v", "<C-x>", dial.dec_visual(), {noremap = true})
vim.keymap.set("v", "g<C-i>",dial.inc_gvisual(), {noremap = true})
vim.keymap.set("v", "g<C-x>",dial.dec_gvisual(), {noremap = true})
