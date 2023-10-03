local colors = {
    innerbg = nil,
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
    yellow = '#F8DE7E',
    orange = '#FFA500',
}

local taha_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white, bg = colors.innerbg },
  },

  insert = { a = { fg = colors.black, bg = colors.yellow } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },
  command = { a = { fg = colors.black, bg = colors.orange } },

  inactive = {
    a = { fg = colors.white, bg = colors.black},
    b = { fg = colors.white, bg = colors.black},
    c = { fg = colors.black, bg = colors.black},
  },
}

require('lualine').setup {
	options = {
		theme = taha_theme,
		component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = '' }
	},
	sections = {
		lualine_a = {
                        {
                            'mode',
                            separator = { left = '' },
                            right_padding = 2
                        }
                    },
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {
                        {
                            'filename',
                            file_status = true,
                            newfile_status = false,
                            path = 1,
                            shorting_target = 40
                        }
                    },
		lualine_x = {'encoding', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {
                        { 
                            'location',
                            separator = { right = '' },
                            left_padding = 1
                        }
                    }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	inactive_winbar = {},
	extensions = {}
}
