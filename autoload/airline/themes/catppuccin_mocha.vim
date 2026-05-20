let g:airline#themes#catppuccin_mocha#palette = {}

function! airline#themes#catppuccin_mocha#refresh()
  let s:c = {
    \ 'rosewater': "#f5e0dc",
    \ 'flamingo': "#f2cdcd",
    \ 'pink': "#f5c2e7",
    \ 'mauve': "#cba6f7",
    \ 'red': "#f38ba8",
    \ 'maroon': "#eba0ac",
    \ 'peach': "#fab387",
    \ 'yellow': "#f9e2af",
    \ 'green': "#a6e3a1",
    \ 'teal': "#94e2d5",
    \ 'sky': "#89dceb",
    \ 'sapphire': "#74c7ec",
    \ 'blue': "#89b4fa",
    \ 'lavender': "#b4befe",
    \ 'text': "#cdd6f4",
    \ 'subtext1': "#bac2de",
    \ 'subtext0': "#a6adc8",
    \ 'overlay2': "#9399b2",
    \ 'overlay1': "#7f849c",
    \ 'overlay0': "#6c7086",
    \ 'surface2': "#585b70",
    \ 'surface1': "#45475a",
    \ 'surface0': "#313244",
    \ 'base': "#1e1e2e",
    \ 'mantle': "#181825",
    \ 'crust': "#11111b",
  \ }

	" Normal mode
	" (Dark)
	let s:N1 = [ s:c.mantle, s:c.blue, 59, 149 ] " guifg guibg ctermfg ctermbg
	let s:N2 = [ s:c.blue, s:c.surface0, 149, 59	] " guifg guibg ctermfg ctermbg
	let s:N3 = [ s:c.text, s:c.mantle, 145, 16	] " guifg guibg ctermfg ctermbg

	" Insert mode
	let s:I1 = [ s:c.mantle, s:c.teal, 59, 74 ] " guifg guibg ctermfg ctermbg
	let s:I2 = [ s:c.teal, s:c.surface0, 74, 59 ] " guifg guibg ctermfg ctermbg
	let s:I3 = [ s:c.text, s:c.mantle, 145, 16 ] " guifg guibg ctermfg ctermbg

	" Visual mode
	let s:V1 = [ s:c.mantle, s:c.mauve, 59, 209 ] " guifg guibg ctermfg ctermbg
	let s:V2 = [ s:c.mauve, s:c.surface0, 209, 59 ] " guifg guibg ctermfg ctermbg
	let s:V3 = [ s:c.text, s:c.mantle, 145, 16	] " guifg guibg ctermfg ctermbg

	" Replace mode
	let s:R1 = [ s:c.mantle, s:c.red, 59, 203 ] " guifg guibg ctermfg ctermbg
	let s:R2 = [ s:c.red, s:c.surface0, 203, 59 ] " guifg guibg ctermfg ctermbg

	" Command mode
	let s:C1 = [ s:c.base, s:c.peach, 59, 166 ] " guifg guibg ctermfg ctermbg
	let s:C2 = [ s:c.peach, s:c.surface0, 166, 59 ] " guifg guibg ctermfg ctermbg

	" Warning section
	let s:WR = [s:c.mantle, s:c.peach, 232, 166 ]

	" Error section
	let s:ER = [s:c.mantle, s:c.red, 232, 166 ]


	let g:airline#themes#catppuccin_mocha#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

	let g:airline#themes#catppuccin_mocha#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

	let g:airline#themes#catppuccin_mocha#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

	let s:IA = [ s:N1[1], s:N3[1], s:N1[3], s:N3[3], '' ]
	let g:airline#themes#catppuccin_mocha#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

	let g:airline#themes#catppuccin_mocha#palette.normal.airline_warning = s:WR
	let g:airline#themes#catppuccin_mocha#palette.insert.airline_warning = s:WR
	let g:airline#themes#catppuccin_mocha#palette.visual.airline_warning = s:WR

	let g:airline#themes#catppuccin_mocha#palette.normal.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin_mocha#palette.insert.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin_mocha#palette.visual.airline_warning_to_airline_error = s:WR

	let g:airline#themes#catppuccin_mocha#palette.normal.airline_error = s:ER
	let g:airline#themes#catppuccin_mocha#palette.insert.airline_error = s:ER
	let g:airline#themes#catppuccin_mocha#palette.visual.airline_error = s:ER

	" Fork replace mode from insert mode
	let g:airline#themes#catppuccin_mocha#palette.replace = copy(g:airline#themes#catppuccin_mocha#palette.insert)
	let g:airline#themes#catppuccin_mocha#palette.replace.airline_a = [ s:R1[0], s:R1[1], s:R1[2], s:R1[3], '' ]
	let g:airline#themes#catppuccin_mocha#palette.replace.airline_b = [ s:R2[0], s:R2[1], s:R2[2], s:R2[3], '' ]

	" Terminal mode is same as insert mode
	let g:airline#themes#catppuccin_mocha#palette.terminal = copy(g:airline#themes#catppuccin_mocha#palette.insert)

	" Fork command mode from normal mode
	let g:airline#themes#catppuccin_mocha#palette.commandline = copy(g:airline#themes#catppuccin_mocha#palette.normal)
	let g:airline#themes#catppuccin_mocha#palette.commandline.airline_a = [ s:C1[0], s:C1[1], s:C1[2], s:C1[3], '' ]
	let g:airline#themes#catppuccin_mocha#palette.commandline.airline_b = [ s:C2[0], s:C2[1], s:C2[2], s:C2[3], '' ]
endfunction

call airline#themes#catppuccin_mocha#refresh()
