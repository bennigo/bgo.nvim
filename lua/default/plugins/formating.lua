return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require 'conform'

    conform.setup {
      formatters_by_ft = {
        python = { 'isort', 'black' },
        javascript = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        lua = { 'stylua' },
      },
      format_on_save = false,
      async = false,
      timout_ms = 500,
    }

    vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timout_ms = 500,
      }
    end, { desc = 'Format fiel or range (in visual mode)' })
  end,
}
