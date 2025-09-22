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
  let s:bg_0 = '#103c48'
  let s:bg_1 = '#184956'
  let s:bg_2 = '#255b69'
  let s:dim_0 = '#72898f'
  let s:fg_0 = '#adbcbc'
  let s:fg_1 = '#cad8d9'

  let s:red = '#fa5750'
  let s:green = '#75b938'
  let s:yellow = '#dbb32d'
  let s:blue = '#4695f7'
  let s:magenta = '#f275be'
  let s:cyan = '#41c7b9'
  let s:orange = '#ed8649'
  let s:violet = '#af88eb'

  let s:br_red = '#ff665c'
  let s:br_green = '#84c747'
  let s:br_yellow = '#ebc13d'
  let s:br_blue = '#58a3ff'
  let s:br_magenta = '#ff84cd'
  let s:br_cyan = '#53d6c7'
  let s:br_orange = '#fd9456'
  let s:br_violet = '#bd96fa'
else
  let s:bg_0 = '#fbf3db'
  let s:bg_1 = '#e9e4d0'
  let s:bg_2 = '#cfcebe'
  let s:dim_0 = '#909995'
  let s:fg_0 = '#53676d'
  let s:fg_1 = '#3a4d53'

  let s:red = '#d2212d'
  let s:green = '#489100'
  let s:yellow = '#ad8900'
  let s:blue = '#0072d4'
  let s:magenta = '#ca4898'
  let s:cyan = '#009c8f'
  let s:orange = '#c25d1e'
  let s:violet = '#8762c6'

  let s:br_red = '#cc1729'
  let s:br_green = '#428b00'
  let s:br_yellow = '#a78300'
  let s:br_blue = '#006dec'
  let s:br_magenta = '#c44392'
  let s:br_cyan = '#00978a'
  let s:br_orange = '#bc5819'
  let s:br_violet = '#825dc0'
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
