let g:airline#themes#catppuccin_macchiato#palette = {}

function! airline#themes#catppuccin_macchiato#refresh()
  let s:c = {
    \ 'rosewater': "#f4dbd6",
    \ 'flamingo': "#f0c6c6",
    \ 'pink': "#f5bde6",
    \ 'mauve': "#c6a0f6",
    \ 'red': "#ed8796",
    \ 'maroon': "#ee99a0",
    \ 'peach': "#f5a97f",
    \ 'yellow': "#eed49f",
    \ 'green': "#a6da95",
    \ 'teal': "#8bd5ca",
    \ 'sky': "#91d7e3",
    \ 'sapphire': "#7dc4e4",
    \ 'blue': "#8aadf4",
    \ 'lavender': "#b7bdf8",
    \ 'text': "#cad3f5",
    \ 'subtext1': "#b8c0e0",
    \ 'subtext0': "#a5adcb",
    \ 'overlay2': "#939ab7",
    \ 'overlay1': "#8087a2",
    \ 'overlay0': "#6e738d",
    \ 'surface2': "#5b6078",
    \ 'surface1': "#494d64",
    \ 'surface0': "#363a4f",
    \ 'base': "#24273a",
    \ 'mantle': "#1e2030",
    \ 'crust': "#181926",
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


	let g:airline#themes#catppuccin_macchiato#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

	let g:airline#themes#catppuccin_macchiato#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

	let g:airline#themes#catppuccin_macchiato#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

	let s:IA = [ s:N1[1], s:N3[1], s:N1[3], s:N3[3], '' ]
	let g:airline#themes#catppuccin_macchiato#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

	let g:airline#themes#catppuccin_macchiato#palette.normal.airline_warning = s:WR
	let g:airline#themes#catppuccin_macchiato#palette.insert.airline_warning = s:WR
	let g:airline#themes#catppuccin_macchiato#palette.visual.airline_warning = s:WR

	let g:airline#themes#catppuccin_macchiato#palette.normal.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin_macchiato#palette.insert.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin_macchiato#palette.visual.airline_warning_to_airline_error = s:WR

	let g:airline#themes#catppuccin_macchiato#palette.normal.airline_error = s:ER
	let g:airline#themes#catppuccin_macchiato#palette.insert.airline_error = s:ER
	let g:airline#themes#catppuccin_macchiato#palette.visual.airline_error = s:ER

	" Fork replace mode from insert mode
	let g:airline#themes#catppuccin_macchiato#palette.replace = copy(g:airline#themes#catppuccin_macchiato#palette.insert)
	let g:airline#themes#catppuccin_macchiato#palette.replace.airline_a = [ s:R1[0], s:R1[1], s:R1[2], s:R1[3], '' ]
	let g:airline#themes#catppuccin_macchiato#palette.replace.airline_b = [ s:R2[0], s:R2[1], s:R2[2], s:R2[3], '' ]

	" Terminal mode is same as insert mode
	let g:airline#themes#catppuccin_macchiato#palette.terminal = copy(g:airline#themes#catppuccin_macchiato#palette.insert)

	" Fork command mode from normal mode
	let g:airline#themes#catppuccin_macchiato#palette.commandline = copy(g:airline#themes#catppuccin_macchiato#palette.normal)
	let g:airline#themes#catppuccin_macchiato#palette.commandline.airline_a = [ s:C1[0], s:C1[1], s:C1[2], s:C1[3], '' ]
	let g:airline#themes#catppuccin_macchiato#palette.commandline.airline_b = [ s:C2[0], s:C2[1], s:C2[2], s:C2[3], '' ]
endfunction

call airline#themes#catppuccin_macchiato#refresh()
