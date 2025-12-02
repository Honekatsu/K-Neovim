return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      -- 挿入モードでもレンダリングする
      render_modes = { 'n', 'c', 't', 'i' },
      heading = {
        width = "block",
        left_pad = 0,
        right_pad = 2,
        icons = {},
      },
      bullet = {
        icons = { '・' },
        left_pad = 0.2,
      },
    },
}
