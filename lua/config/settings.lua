-- Set map leaders
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw banner
vim.g.netrw_banner = 0

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Highlight search , replace view, and case settings
vim.opt.incsearch = true
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- More colors and enable nerd font
vim.opt.termguicolors = true
vim.g.have_nerd_font = true

-- Sides, top, bottom
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'

-- Faster update time
vim.opt.updatetime = 50

-- Disables showing mode
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true

-- Enable whitespace characters
vim.opt.list = true
vim.opt.listchars = { trail = '·' }

-- Highlight cursor line
vim.opt.cursorline = true

-- Ask for confirm if operation fails
vim.opt.confirm = true
