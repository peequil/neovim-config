-- Setting files --
   require 'user.vim_plug'
   require 'user.options'
   require 'user.treesitter'
   require 'user.cmp'
   require 'user.lsp'
   require 'user.autoclose'

-- COLORSCHEME --
   -- require('boo-colorscheme').use({ theme = 'forest_stream' })
   -- require('boo-colorscheme').use({ theme = 'sunset_clound' })
   -- require('boo-colorscheme').use({ theme = 'radioactive_waste' })
   -- require('boo-colorscheme').use({ theme = 'crimson_moonlight' })
   require 'user.colorscheme'

-- SETUP --
   vim.g['python3_host_prog'] = '/usr/bin/python3.9'
   vim.opt.foldmethod = 'expr'
   vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Airline --
   -- vim.g['airline_theme'] = 'nord_minimal'
   -- vim.g['airline_theme'] = 'base16_nord'
   vim.g['airline_theme'] = 'catppuccin'
   -- vim.g['airline#extensions#tabline#fromatter'] = 'default'

-- NerdTree Mapping --
   vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
   vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
