-- File: lua/custom/plugins/rust_tools.lua

return {
  "simrat39/rust-tools.nvim",
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp','nvim-lua/plenary.nvim','mfussenegger/nvim-dap' },
  config = function()
    local rt = require("rust-tools")

    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          -- Hover actions
          vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
      -- debugging stuff
      dap = {
        adapter = {
          type = "executable",
          command = "lldb-vscode",
          name = "rt_lldb",
        },
      },
    })
  end,
}

