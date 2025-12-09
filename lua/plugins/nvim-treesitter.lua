return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    -- 'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    require'nvim-treesitter'.install(
      {
        "arduino",
        "astro",
        "bash",
        "bibtex",
        "c",
        "c_sharp",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dart",
        "diff",
        "dockerfile",
        "doxygen",
        "editorconfig",
        "elixir",
        "erlang",
        "gleam",
        "helm",
        "html",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "nix",
        "powershell",
        "prisma",
        "python",
        "rust",
        "scss",
        "typescript",
        "vue",
        "yaml",
        "zig",
        "zsh",
      })
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        -- パーサーが利用可能な場合のみ Treesitter を有効化する
        -- pcallで囲むことでパーサー未インストールの言語を開いた際のエラーを防ぐ
        local ok, _ = pcall(vim.treesitter.start, args.buf)
        
        if ok then
          -- インデント有効化
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
