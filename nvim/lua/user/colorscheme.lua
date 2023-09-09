-- vim.cmd [[
--     "hi Normal			guifg=none	guibg=#262a33
--     hi LineNr 			guifg=#41b193
--     hi LineNrAbove 		guifg=#49514f
--     hi LineNrBelow		guifg=#49514f
-- " Popup menu
--     hi Pmenu 			guifg=#34ba61	guibg=#282a36
--     hi PmenuSel			guifg=#282a36	guibg=#34ba61
--     hi PmenuSbar		guifg=none	guibg=#282a36
--     hi PmenuThumb		guifg=#282a36	guibg=#34ba61
-- " Float menu
--     " hi NormalFloat		guifg=#a277ff	guibg=#191a21
--     hi NormalFloat		guifg=#a277ff	guibg=#18181f
--     hi FloatBorder		guifg=#a277ff	guibg=none
-- " Diagnostic
--     hi DiagnosticError		guifg=#ff6767	guibg=none
--     hi DiagnosticWarn   	guifg=#ff6767
--     hi DiagnosticInfo		guifg=#61ffca	guibg=none
--     hi DiagnosticHint		guifg=#82e2ff	guibg=none
-- " Split
--     hi VertSplit		guifg=#182e22	guibg=#182e22
-- " Status
--     hi StatusLine		guifg=#41b193	guibg=#282a36	gui=bold
--     hi StatusLineNC		guifg=#26693c	guibg=#070d09	gui=bold
--     hi TabLine			guifg=#b30e40
-- " LspInstaller
--     hi LspInstallerHeader	guifg=#222222	guibg=#a277ff	gui=bold	cterm=bold
-- ]]

-- NORD THEME --
-- vim.cmd [[
--   colorscheme nord

--   hi LineNr		guifg=#88c0d0
--   hi LineNrAbove	guifg=#4C566A
--   hi LineNrBelow	guifg=#4C566A
-- ]]


-- CATPPUCCIN THEME -- 
  require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha 
      background = { -- :h background 
	  light = "latte",
	  dark = "mocha",
      },
      transparent_background = false,
      term_colors = false,
      dim_inactive = {
	  enabled = false,
	  shade = "dark",
	  percentage = 0.15,
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      styles = {
	  comments = { "italic" },
	  conditionals = { "italic" },
	  loops = { "bold" },
	  functions = { "bold" },
	  keywords = {},
	  strings = {},
	  variables = {},
	  numbers = {},
	  booleans = {},
	  properties = {},
	  types = {},
	  operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
	  cmp = true,
	  gitsigns = false,
	  nvimtree = false,
	  telescope = false,
	  notify = false,
	  mini = false,
	  -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
  })
  -- setup must be called before loading
  vim.cmd [[
    colorscheme catppuccin
  ]]


-- POIMANDRES --
  -- vim.cmd [[
  --   colorscheme poimandres
  -- ]]
