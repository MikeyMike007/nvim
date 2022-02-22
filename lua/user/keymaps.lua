local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shortens the function name
-- i.e. instead of writing vim.api.nvim_set_keymap
-- you can basically write keymap
local keymap = vim.api.nvim_set_keymap

-- Different vim modes
local normal_mode = "n"
local insert_mode = "i"
local visual_mode = "v"
local visual_block_mode = "x"
local term_mode = "t"
local command_mode = "c"
local no_mode = ""

-- Remap leader key
keymap(no_mode, "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap(normal_mode, "<C-h>", "<C-w>h", opts)
keymap(normal_mode, "<C-j>", "<C-w>j", opts)
keymap(normal_mode, "<C-k>", "<C-w>k", opts)
keymap(normal_mode, "<C-l>", "<C-w>l", opts)

-- Reisize with arrows
keymap(normal_mode, "<C-Up>", ":resize +2<CR>", opts)
keymap(normal_mode, "<C-Down>", ":resize -2<CR>", opts)
keymap(normal_mode, "<C-Left>", ":vertical resize -2<CR>", opts)
keymap(normal_mode, "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap(normal_mode, "<S-l>", ":bnext<CR>", opts)
keymap(normal_mode, "<S-h>", ":bprevious<CR>", opts)

-- Hop
keymap(normal_mode, "s", ":HopWord<cr>", opts)
keymap(normal_mode, "S", ":HopLine<cr>", opts)

-- Visual Mode
-- Stay in indent mode
keymap(visual_mode, "<", "<gv", opts)
keymap(visual_mode, ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap(visual_block_mode, "J", ":move '>+1<CR>gv-gv", opts)
keymap(visual_block_mode, "K", ":move '<-2<CR>gv-gv", opts)
keymap(visual_block_mode, "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap(visual_block_mode, "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better terminal navigation
-- keymap(term_mode, "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap(term_mode, "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap(term_mode, "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap(term_mode, "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap(
  "n",
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = true }))<cr>",
  opts
)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree
-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Format
-- keymap("n", "<leader>f", ":Format<cr>", opts)
