return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {},
  keys = {
    { "<leader>td", "<cmd>TodoQuickFix<cr>", desc = "Show TODOs" }
  }
}
