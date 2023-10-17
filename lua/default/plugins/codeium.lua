local function setup()
  require('codeium').setup {
    formatting = {
      format = require('lspkind').cmp_format {
        mode = 'symbol',
        maxwidth = 50,
        ellipsis_char = '...',
        symbol_map = { Codeium = '' },
      },
    },
  }
end

return {
  'Exafunction/codeium.nvim',
  event = 'BufEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    setup()

    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })   setup()

  end
}
