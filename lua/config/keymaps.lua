-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to spacebar
map("", "<SPACE>", "<nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("n", "<left>", "<nop>")
map("n", "<right>", "<nop>")

-- Better Navigation, it is not required as long as scrolloff = 999
-- map('n', 'j', 'jzz')
-- map('n', 'k', 'kzz')

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Navigate in Insert Mode
map("i", "<C-k>", "<Up>")
map("i", "<C-j>", "<Down>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "jj", "<Esc>")

-- Move Lines
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })

-- Buffer manipulation
-- map("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })
-- map("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer" })
-- map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })
-- map("n", "<leader>bD", ":bdelete<CR>:q!", { desc = "Delete Buffer & Close Window" })
-- map("n", "<leader>bw", ":bwipeout<CR>", { desc = "Wipeout Buffer" })
-- map("n", "<leader>bb", ":enew<CR>", { desc = "New Window & Buffer" })
-- map("n", "<A-ESC>", ":%bd|e#|bd# <CR>", { desc = "Delete all buffer except current" })

-- Navigate in Terminal
-- map("t", "<C-h>", "<C-\\><C-n><C-w><C-h>")
-- map("t", "<C-j>", "<C-\\><C-n><C-w><C-j>")
-- map("t", "<C-k>", "<C-\\><C-n><C-w><C-k>")
-- map("t", "<C-l>", "<C-\\><C-n><C-w><C-l>")

-- Toggle the undotree
map("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Opens UndoTree" })

-- Clear search with <esc>
map("n", "<Esc>", "<cmd>nohl<cr>", { desc = "Escape and Clear hlsearch" })

-- Terminal mappings, require custom terminal plugin
map("n", "<Leader><CR>", ":FloatingTerminal<CR>", { desc = "Toggles Floating Terminal" })
map("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode in Terminal" })

-- Oil
map("n", "<leader>0", ":Oil --float<CR>", { desc = "Opens Oil in floating mode" })

-- Replace the world under the cursor
map("n", "<Leader>/", [[:%s/<C-r><C-w>//g<Left><Left>]])
map("v", "<Leader>/", [[:%s/<C-r><C-w>//g<Left><Left>]])

-- Delete without copying into register
map("n", "x", '"_x')
map("v", "x", '"_x')
map("n", "dd", '"_dd')
map("n", "dd", '"_dd')

-- Indentation keep the selection
map("v", "<", "<gv")
map("v", ">", ">gv")
