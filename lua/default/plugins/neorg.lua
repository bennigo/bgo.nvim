return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  opts = {
    load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.concealer'] = {
        config = {
          icon_preset = 'diamond',
          icons = {
            todo = {
              uncertain = {
                icon = '',
              },
            },
          },
          dim_code_blocks = {
            enabled = true,
            content_only = true,
            adaptive = false,
            conceal = true,
          },
        },
      }, -- Adds pretty icons to your documents
      ['core.dirman'] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = '~/.notes',
          },
          default_workspace = 'notes',
        },
      },
      ['core.export'] = {},
    },
  },
  dependencies = { { 'nvim-lua/plenary.nvim' } },
}
