vim.filetype.add({
  extension = {
    mdx = "mdx",
    spin = "promela"
  },
})
vim.treesitter.language.register("markdown", { "mdx" })
vim.treesitter.language.register("c", { "promela" })
