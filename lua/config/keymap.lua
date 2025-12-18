-- !! The keymap is (under supervision) ai-generated !! --

-- Basic file operations
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Save file" })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = "Quit buffer" })
vim.keymap.set('n', '<leader>x', ':x<CR>', { desc = "Save and quit" })

-- Splits and windows
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = "Vertical split" })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = "Horizontal split" })
vim.keymap.set('n', '<leader>sc', '<C-w>c', { desc = "Close split" })
vim.keymap.set('n', '<leader>so', '<C-w>o', { desc = "Close other splits" })

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { desc = "List buffers" })
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = "Help tags" })

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Toggle file explorer" })

-- ToggleTerm
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { desc = "Toggle terminal" })

-- Comment.nvim
vim.keymap.set('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', { desc = "Toggle comment" })
vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { desc = "Toggle comment visual" })

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "List references" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover info" })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "Format buffer" })

-- Trouble
vim.keymap.set('n', '<leader>xx', ':TroubleToggle<CR>', { desc = "Toggle trouble list" })
vim.keymap.set('n', '<leader>xw', ':TroubleToggle workspace_diagnostics<CR>', { desc = "Workspace diagnostics" })
vim.keymap.set('n', '<leader>xd', ':TroubleToggle document_diagnostics<CR>', { desc = "Document diagnostics" })

-- GitSigns
vim.keymap.set('n', ']c', function() require('gitsigns').next_hunk() end, { desc = "Next hunk" })
vim.keymap.set('n', '[c', function() require('gitsigns').prev_hunk() end, { desc = "Previous hunk" })
vim.keymap.set('n', '<leader>gs', function() require('gitsigns').stage_hunk() end, { desc = "Stage hunk" })
vim.keymap.set('n', '<leader>gu', function() require('gitsigns').undo_stage_hunk() end, { desc = "Undo stage hunk" })
vim.keymap.set('n', '<leader>gp', function() require('gitsigns').preview_hunk() end, { desc = "Preview hunk" })

-- Debugging (nvim-dap)
vim.keymap.set('n', '<F5>', require('dap').continue, { desc = "Start/Continue debug" })
vim.keymap.set('n', '<F10>', require('dap').step_over, { desc = "Step over" })
vim.keymap.set('n', '<F11>', require('dap').step_into, { desc = "Step into" })
vim.keymap.set('n', '<F12>', require('dap').step_out, { desc = "Step out" })
vim.keymap.set('n', '<leader>db', require('dap').toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set('n', '<leader>dr', require('dap').repl.open, { desc = "Open REPL" })
vim.keymap.set('n', '<leader>du', require('dapui').toggle, { desc = "Toggle dap-ui" })
