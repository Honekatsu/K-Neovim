local ft = require('Comment.ft')

-- 1. Using set function

ft
 -- Set only line comment
 -- Or set both line and block commentstring
 .set('spin', {'//%s', '/*%s*/'})

-- 2. Metatable magic

ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s'

-- Multiple filetypes
ft({'go', 'rust'}, ft.get('c'))
ft({'toml', 'graphql'}, '#%s')
