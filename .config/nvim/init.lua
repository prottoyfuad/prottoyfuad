--  author : pro@eunoia 

-- Theme
vim.o.background = 'dark'
vim.cmd('colorscheme darkblue')

vim.o.wrap = true
vim.o.linebreak = true
vim.o.fileencoding = 'utf-8'
vim.o.fileformats = 'unix'
vim.o.clipboard = 'unnamedplus'
vim.o.shortmess = vim.o.shortmess .. 'I'
vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Tab / Indentation settings
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Performance / Behavior
vim.o.scrolloff = 2
vim.o.backup = false
vim.o.swapfile = false

-- Keymaps (Equivalent to 'nmap' and 'inoremap')
-- Disable annoying Ex mode
vim.keymap.set('n', 'Q', '<Nop>', { noremap = true, silent = true })

-- Prevent bad movement habits (Normal Mode)
vim.keymap.set('n', '<Left>',  ':echoe "Use h"<CR>', { noremap = true })
vim.keymap.set('n', '<Right>', ':echoe "Use l"<CR>', { noremap = true })
vim.keymap.set('n', '<Up>',    ':echoe "Use k"<CR>', { noremap = true })
vim.keymap.set('n', '<Down>',  ':echoe "Use j"<CR>', { noremap = true })

-- Prevent bad movement habits (Insert Mode)
vim.keymap.set('i', '<Left>',  '<ESC>:echoe "Use h"<CR>', { noremap = true })
vim.keymap.set('i', '<Right>', '<ESC>:echoe "Use l"<CR>', { noremap = true })
vim.keymap.set('i', '<Up>',    '<ESC>:echoe "Use k"<CR>', { noremap = true })
vim.keymap.set('i', '<Down>',  '<ESC>:echoe "Use j"<CR>', { noremap = true })

