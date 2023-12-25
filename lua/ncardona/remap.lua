vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open :Lex
vim.keymap.set("n", "<leader>e", "<cmd>Lex<CR>")

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "y", "ygy<Esc>")

vim.keymap.set("n", "<leader>w", ":w<CR>")



-- line break insert without leaving normal mode 
vim.keymap.set("n", "<leader>o", "<cmd>call append(line(\".\"), repeat([\"\"], v:count1))<cr>")
vim.keymap.set("n", "<leader>O", "<cmd>call append(line(\".\")-e, repeat([\"\"], v:count1))<cr>")

vim.keymap.set("n", "<leader>l", "<cmd>vert winc ]<cr>") -- open definition to the side

-- Tabs remapping
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>") -- :open a new tab

-- Windows remapping
vim.keymap.set("n", "<leader>wn", "<C-w>n") -- :split window horizontally (editing current buffer)
vim.keymap.set("n", "<leader>ws", "<C-w>s") -- :split window horizontally (editing current buffer)
vim.keymap.set("n", "<leader>wv", "<C-w>v") -- :split window horizontally (editing current buffer)
vim.keymap.set("n", "<leader>wc", "<C-w>c") -- :close window
vim.keymap.set("n", "<leader>wo", "<C-w>o") -- close all windows, leaving :only the current window open
-- vim.keymap.set({"n", "v"}, "<C-l>", "<C-w>w") -- go to next window
-- vim.keymap.set({"n", "v"}, "<C-h>", "<C-w>p") -- go to previous window
vim.keymap.set({"n", "i", "v"}, "<C-k>", "<C-w><Up>") -- go to window above
vim.keymap.set({"n", "i", "v"}, "<C-j>", "<C-w><Down>") -- go to window below
vim.keymap.set({"n", "i", "v"}, "<C-h>", "<C-w><Left>") -- go to window on left
vim.keymap.set({"n", "i", "v"}, "<C-l>", "<C-w><Right>") -- go to window on right 

-- Resize lines more friendly
vim.keymap.set("n", "<leader>Left", "<silent> :vertical resize +3<CR>") -- 
vim.keymap.set("n", "<leader>Right", "<silent> :vertical resize -3<CR>") -- 
vim.keymap.set("n", "<leader>Up", "<silent> :resize +3<CR>") -- 
vim.keymap.set("n", "<leader>Down", "<silent> :resize -3<CR>") -- 

-- Remove the enter below and keep the cursor at the begining of the line 
vim.keymap.set("v", "J", ": m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ": m '<-2<CR>gv=gv")

-- Yank
vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<Leader>vwm", function()
    require("vim-with-me").StartVimWithMe() end)
vim.keymap.set("n", "<Leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Delete highlighted word and don't remove the clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever: asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


-- Scripts to run file types
-- Python

vim.keymap.set("n", "<leader>r", "<cmd>w | ! python %<CR>")
