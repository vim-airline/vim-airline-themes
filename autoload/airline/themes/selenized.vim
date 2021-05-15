" MIT License. Copyright (c) 2021 novenary
" vim: et ts=2 sts=2 sw=2 tw=80

scriptencoding utf-8

let s:term_bg_0 = 'NONE'
let s:term_bg_1 = 0
let s:term_bg_2 = 8
let s:term_dim_0 = 7
let s:term_fg_0 = 'NONE'
let s:term_fg_1 = 15

let s:term_red = 1
let s:term_green = 2
let s:term_yellow = 3
let s:term_blue = 4
let s:term_magenta = 5
let s:term_cyan = 6
let s:term_orange = s:term_yellow
let s:term_violet = s:term_magenta

let s:term_br_red = 9
let s:term_br_green = 10
let s:term_br_yellow = 11
let s:term_br_blue = 12
let s:term_br_magenta = 13
let s:term_br_cyan = 14
let s:term_br_orange = s:term_br_yellow
let s:term_br_violet = s:term_br_magenta

if &background ==# 'dark'
  let s:bg_0 = '#112e38'
  let s:bg_1 = '#163945'
  let s:bg_2 = '#254a57'
  let s:dim_0 = '#61777c'
  let s:fg_0 = '#9faeae'
  let s:fg_1 = '#bfd0d0'

  let s:red = '#f13c3e'
  let s:green = '#69ad21'
  let s:yellow = '#d1a416'
  let s:blue = '#3a82f8'
  let s:magenta = '#e75bb3'
  let s:cyan = '#42bdaa'
  let s:orange = '#e26f35'
  let s:violet = '#9b72e9'

  let s:br_red = '#ff4b49'
  let s:br_green = '#78be2e'
  let s:br_yellow = '#e4b424'
  let s:br_blue = '#4a91ff'
  let s:br_magenta = '#fb69c4'
  let s:br_cyan = '#50cfba'
  let s:br_orange = '#f67e41'
  let s:br_violet = '#ab80fc'
else
  let s:bg_0 = '#faf0d2'
  let s:bg_1 = '#e7ddc0'
  let s:bg_2 = '#cbc2a6'
  let s:dim_0 = '#7e8783'
  let s:fg_0 = '#43545a'
  let s:fg_1 = '#2d3c42'

  let s:red = '#c00221'
  let s:green = '#3f8100'
  let s:yellow = '#9b7600'
  let s:blue = '#005dcc'
  let s:magenta = '#b73088'
  let s:cyan = '#038d7c'
  let s:orange = '#b04713'
  let s:violet = '#714cbc'

  let s:br_red = '#b9001e'
  let s:br_green = '#3a7b00'
  let s:br_yellow = '#957000'
  let s:br_blue = '#0059c6'
  let s:br_magenta = '#b12b82'
  let s:br_cyan = '#008777'
  let s:br_orange = '#a9430f'
  let s:br_violet = '#6b47b6'
endif

let g:airline#themes#selenized#palette = {}

let s:NA = [ s:bg_1, s:green, s:term_bg_1, s:term_green ]
let s:NB = [ s:fg_0, s:bg_2, s:term_fg_0, s:term_bg_2 ]
let s:NC = [ s:dim_0, s:bg_1, s:term_dim_0, s:term_bg_1 ]
let s:NC_modified = [ s:yellow, s:NC[1], s:term_yellow, s:NC[3] ]
let g:airline#themes#selenized#palette.normal = airline#themes#generate_color_map(s:NA, s:NB, s:NC)
let g:airline#themes#selenized#palette.normal_modified = {
      \ 'airline_c': s:NC_modified,
      \ }

let s:IA = [ s:bg_1, s:blue, s:term_bg_1, s:term_blue ]
let g:airline#themes#selenized#palette.insert = airline#themes#generate_color_map(s:IA, s:NB, s:NC)
let g:airline#themes#selenized#palette.terminal = airline#themes#generate_color_map(s:IA, s:NB, s:NC)
let g:airline#themes#selenized#palette.insert_modified = copy(g:airline#themes#selenized#palette.normal_modified)

let s:RA = [ s:bg_1, s:red, s:term_bg_1, s:term_red ]
let g:airline#themes#selenized#palette.replace = airline#themes#generate_color_map(s:RA, s:NB, s:NC)
let g:airline#themes#selenized#palette.replace_modified = copy(g:airline#themes#selenized#palette.normal_modified)

let s:VA = [ s:bg_1, s:violet, s:term_bg_1, s:term_violet ]
let g:airline#themes#selenized#palette.visual = airline#themes#generate_color_map(s:VA, s:NB, s:NC)
let g:airline#themes#selenized#palette.visual_modified = copy(g:airline#themes#selenized#palette.normal_modified)

let s:INACTIVE = [ s:dim_0, s:bg_2, s:term_dim_0, s:term_bg_2 ]
let s:INACTIVE_modified = [ s:yellow, s:INACTIVE[1], s:term_yellow, s:INACTIVE[3] ]
let g:airline#themes#selenized#palette.inactive = airline#themes#generate_color_map(s:INACTIVE, s:INACTIVE, s:INACTIVE)
let g:airline#themes#selenized#palette.inactive_modified = {
      \ 'airline_c': s:INACTIVE_modified,
      \ }

let s:WARNING = [ s:bg_1, s:br_yellow, s:term_bg_1, s:term_br_yellow ]
let g:airline#themes#selenized#palette.normal.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.normal_modified.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.insert.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.insert_modified.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.replace.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.replace_modified.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.visual.airline_warning = s:WARNING
let g:airline#themes#selenized#palette.visual_modified.airline_warning = s:WARNING

let s:ERROR = [ s:bg_1, s:br_red, s:term_bg_1, s:term_br_red ]
let g:airline#themes#selenized#palette.normal.airline_error = s:ERROR
let g:airline#themes#selenized#palette.normal_modified.airline_error = s:ERROR
let g:airline#themes#selenized#palette.insert.airline_error = s:ERROR
let g:airline#themes#selenized#palette.insert_modified.airline_error = s:ERROR
let g:airline#themes#selenized#palette.replace.airline_error = s:ERROR
let g:airline#themes#selenized#palette.replace_modified.airline_error = s:ERROR
let g:airline#themes#selenized#palette.visual.airline_error = s:ERROR
let g:airline#themes#selenized#palette.visual_modified.airline_error = s:ERROR

let g:airline#themes#selenized#palette.accents = {
      \ 'red': [ s:red, '', s:term_red, '' ]
      \ }
