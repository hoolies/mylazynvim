----------------------------------=={ Setup Local }==-------------------------------

local opt = vim.wo
local set = vim.opt

----------------------------------=={   Settings   }==------------------------------

-- Behavior
set.autoindent = true
set.scrolloff = 999 -- Sets cursor always on the middle of the screen
set.showmatch = true
set.splitright = true
set.splitbelow = true
set.autochdir = true
set.iskeyword = "@,48-57,192-255"
set.modifiable = true
set.guicursor = "n:block,i-ci:hor20,v-ve:block"

-- Buffer
set.autoread = true
set.hidden = true
set.updatetime = 250

-- Copy to clipboard
set.clipboard = "unnamedplus"

-- Columns
set.cursorcolumn = true
set.cursorline = true

-- Line wraps
set.wrapscan = true
opt.wrap = true
opt.linebreak = true
opt.list = false
set.whichwrap:append("<>[]hl")

-- Number column
opt.colorcolumn = "0"
set.number = true
set.numberwidth = 5
set.relativenumber = true
set.ruler = true
set.signcolumn = "yes"

-- Search
set.hlsearch = true
set.ignorecase = true
set.incsearch = true
set.smartcase = true

-- Tabs/Identation
set.expandtab = true
set.shiftwidth = 2
set.smartindent = true
set.softtabstop = 2
set.tabstop = 2
set.wrap = false

-- Undo history settings
set.undodir = "/home/hoolies/.config/nvim/undodir"
set.undofile = true
set.undolevels = 1000
set.undoreload = 1000

-- Various
set.fileencoding = "utf-8"
set.showmode = true
set.showtabline = 0
set.spell = true
set.termguicolors = true
set.visualbell = true
set.completeopt = "menuone,noinsert,noselect"
