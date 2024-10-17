-- General options
vim.opt.clipboard = 'unnamedplus'       -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                     -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                     -- number of visual spaces per TAB
vim.opt.softtabstop = 4                 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4                  -- insert 4 spaces on a tab
vim.opt.expandtab = true                -- tabs are spaces

-- UI
vim.opt.cursorline = true               -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true               -- open new vertical split bottom
vim.opt.splitright = true               -- open new horizontal splits right

-- Search
vim.opt.ignorecase = true               -- ignore case in search patterns
vim.opt.incsearch = true                -- search as characters are entered
vim.opt.smartcase = true                -- but make it case sensitive if an uppercase is entered

-- Context
vim.opt.colorcolumn = '100'              -- show col for max line length
vim.opt.number = true                   -- show line numbers
vim.opt.scrolloff = 4                   -- min num lines of context
vim.opt.signcolumn = "yes"              -- show the sign column

-- Theme
vim.opt.syntax = "ON"                       -- allow syntax highlighting
vim.opt.termguicolors = true                -- if term supports ui color then enable

-- Keybindings
vim.api.nvim_set_keymap('t', '<C-ESC>', '<C-\\><C-n>', {noremap = true})
