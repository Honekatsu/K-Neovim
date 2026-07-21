local ft = require('Comment.ft')

-- Custom filetypes
ft
 -- Set only line comment
 -- Or set both line and block commentstring
 .set('spin', {'//%s', '/*%s*/'})

-- Standard filetypes
ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s'
ft.tex = '%%s'

-- Apply the same comment style to multiple filetypes
ft({'go', 'rust'}, ft.get('c'))
ft({'toml', 'graphql'}, '#%s')
