return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add          = { text = "┃" }, -- 細いブロック
      change       = { text = "┃" },
      delete       = { text = "┃" },
      topdelete    = { text = "┃" },
      changedelete = { text = "┃" },
      untracked    = { text = "┃" },
    },
    signcolumn = true,
    numhl      = true,  -- 行番号をハイライト
    -- linehl     = true,  -- 行全体をハイライト
    on_attach = function(bufnr)
      local set_hl = vim.api.nvim_set_hl
      local ns = 0 -- global namespace

      -- 細いバー部分 (signcolumn)
      set_hl(ns, "GitSignsAdd",    { fg = "#3fb950", bg = "NONE" })
      set_hl(ns, "GitSignsChange", { fg = "#d29922", bg = "NONE" })
      set_hl(ns, "GitSignsDelete", { fg = "#f85149", bg = "NONE" })

      -- 行番号 (numhl)
      set_hl(ns, "GitSignsAddNr",    { fg = "#3fb950" })
      set_hl(ns, "GitSignsChangeNr", { fg = "#d29922" })
      set_hl(ns, "GitSignsDeleteNr", { fg = "#f85149" })

      -- 行全体 (linehl)
      -- set_hl(ns, "GitSignsAddLn",    { bg = "#163e29" }) -- 濃い緑
      -- set_hl(ns, "GitSignsChangeLn", { bg = "#2b2b1b" }) -- 渋めの黄/茶
      -- set_hl(ns, "GitSignsDeleteLn", { bg = "#2b1b1b" }) -- 暗めの赤
    end,

    -- === 行の更新者表示 ===
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 200,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = '-- <author>: <author_time:%R> - <summary>',
    
    -- === パフォーマンス設定 ===
    update_debounce = 100,
    max_file_length = 40000, -- Disable if file is longer than this (in lines)

  },
}
