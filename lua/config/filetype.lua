vim.filetype.add({
  extension = {
    mdx = "mdx",
    spin = "promela",
    bs = "bs"
  },
})
vim.treesitter.language.register("markdown", { "mdx" })
vim.treesitter.language.register("c", { "promela" })
vim.treesitter.language.register("typescript", { "bs" })
