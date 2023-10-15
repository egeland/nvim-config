return {
  'saecki/crates.nvim',
  tag = 'v0.4.0',
  dependencies = { 'nvim-lua/plenary.nvim','hrsh7th/nvim-cmp' },
  config = function()
    require('crates').setup {}
  end,
}
