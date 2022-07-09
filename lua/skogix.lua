print("Sourced skogix")

vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.tabstop = 4

lvim.colorscheme = "gruvbox"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["sh"] = ":lua vim.lsp.buf.hover()<cr>"
lvim.keys.normal_mode["<leader>zen"] = ":ZenMode<cr>"
lvim.keys.normal_mode["f"] = "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>"
lvim.keys.normal_mode["<leader>w"] = "<cmd>HopWordAC<cr>"
lvim.keys.normal_mode["<leader>b"] = "<cmd>HopWordBC<cr>"
lvim.keys.normal_mode["<leader>j"] = "<cmd>HopLineAC<cr>"
lvim.keys.normal_mode["<leader>k"] = "<cmd>HopLineBC<cr>"
lvim.keys.normal_mode["<leader><leader>"] = "<cmd>HopPattern<cr>"

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}
