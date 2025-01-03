vim.g.mapleader = ' '
vim.keymap.set('n' ,  '<leader>no', vim.cmd.NvimTreeOpen)
vim.keymap.set('n' ,  '<leader>nc', vim.cmd.NvimTreeClose)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'ö', vim.cmd.bnext)
vim.keymap.set('n', 'ä', vim.cmd.bprevious)

vim.keymap.set("x", '<leader>p', [["_dP]])
vim.keymap.set({"n", 'v'}, "<leader>y", [["+y]])
vim.keymap.set("n", '<leader>Y', [["+Y]])
vim.keymap.set({"n", 'v'}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set(
    "n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>vpp",
    "<cmd>e ~/.config/nvim/lua/TheGhazal/packer.lua<CR>"
);

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set('n', '<leader>co', '<cmd>!./compile.sh<CR>')
vim.keymap.set({ "n", "v" }, '<leader>ee', require('nvim-emmet').wrap_with_abbreviation)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
