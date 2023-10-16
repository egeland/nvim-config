return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
 config = function ()
   -- vim.keymap.set('n', '<leader>tr', "<CMD>Neotest run<CR>", { desc = 'Neotest Run' })
   vim.keymap.set("n", "<leader>cx", function() require("trouble").toggle() end, { desc = 'Trouble [T]oggle'})
   vim.keymap.set("n", "<leader>cw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = 'Trouble Toggle [W]orkspace Diagnostics'})
   vim.keymap.set("n", "<leader>cd", function() require("trouble").toggle("document_diagnostics") end, { desc = 'Trouble Toggle [D]ocument Diagnostics'})
   vim.keymap.set("n", "<leader>cq", function() require("trouble").toggle("quickfix") end, { desc = 'Trouble [Q]uickfix'})
   vim.keymap.set("n", "<leader>cl", function() require("trouble").toggle("loclist") end, { desc = 'Trouble [L]oclist'})
   vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = 'Trouble Toggle LSP [R]eferences'})
 end
}
