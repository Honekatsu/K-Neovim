-- 基本設定
vim.opt.clipboard = "unnamed"           -- SSHでコピペがサーバ側クリップボードに行かないようにする
vim.opt.compatible = false              -- vi互換モードを使わない
vim.opt.cursorline = true               -- カーソル行をハイライト
vim.opt.mouse = ""                      -- マウス操作無効化
vim.opt.tabstop = 2                     -- TABを2スペースとして表示
vim.opt.expandtab = true                -- TABキーでスペース挿入
vim.opt.softtabstop = 2                 -- TABキーで2スペース
vim.opt.shiftwidth = 2                  -- 自動インデントで2スペース
vim.opt.autoindent = true               -- 改行時の自動インデント
vim.opt.virtualedit = "onemore"         -- 行末より先にカーソルを置ける
vim.opt.ignorecase = true               -- 検索で大文字小文字を無視
vim.opt.smartcase = true                -- 大文字を含む検索では区別
vim.opt.incsearch = true                -- インクリメンタルサーチ
vim.opt.foldenable = false              -- 折りたたみ無効化
vim.opt.swapfile = false                -- スワップファイルを作成しない

-- 表示関連
vim.opt.number = true                   -- 行番号表示
vim.cmd("syntax on")                    -- シンタックスハイライト
vim.opt.hlsearch = true                 -- 検索結果のハイライト
vim.opt.laststatus = 2                  -- 常時ステータスバー表示
vim.opt.wildmenu = true                 -- コマンドライン補完の候補表示

-- カラースキーム
vim.cmd("colorscheme pablo")
vim.opt.termguicolors = true          -- 24bitカラーを有効化

-- 背景透過
vim.cmd([[
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
highlight Folded ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=none
]])

-- vim-markdown の設定
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_json_frontmatter = 1
vim.g.cim_markdown_new_list_item_indent = 1

-- プラグインの設定
require("config.lazy")

-- LSPの設定
require('config.lsp')

-- ファイルタイプの設定
require("config.filetype")

-- キーマップ
require("config.keymap")

