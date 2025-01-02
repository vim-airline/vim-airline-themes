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
  let s:bg_0 = '#181818'
  let s:bg_1 = '#252525'
  let s:bg_2 = '#3b3b3b'
  let s:dim_0 = '#777777'
  let s:fg_0 = '#b9b9b9'
  let s:fg_1 = '#dedede'

  let s:red = '#ed4a46'
  let s:green = '#70b433'
  let s:yellow = '#dbb32d'
  let s:blue = '#368aeb'
  let s:magenta = '#eb6eb7'
  let s:cyan = '#3fc5b7'
  let s:orange = '#e67f43'
  let s:violet = '#a580e2'

  let s:br_red = '#ff5e56'
  let s:br_green = '#83c746'
  let s:br_yellow = '#efc541'
  let s:br_blue = '#4f9cfe'
  let s:br_magenta = '#ff81ca'
  let s:br_cyan = '#56d8c9'
  let s:br_orange = '#fa9153'
  let s:br_violet = '#b891f5'
else
  let s:bg_0 = '#ffffff'
  let s:bg_1 = '#ebebeb'
  let s:bg_2 = '#cdcdcd'
  let s:dim_0 = '#878787'
  let s:fg_0 = '#474747'
  let s:fg_1 = '#282828'

  let s:red = '#d6000c'
  let s:green = '#1d9700'
  let s:yellow = '#c49700'
  let s:blue = '#0064e4'
  let s:magenta = '#dd0f9d'
  let s:cyan = '#00ad9c'
  let s:orange = '#d04a00'
  let s:violet = '#7f51d6'

  let s:br_red = '#bf0000'
  let s:br_green = '#008400'
  let s:br_yellow = '#af8500'
  let s:br_blue = '#0054cf'
  let s:br_magenta = '#c7008b'
  let s:br_cyan = '#009a8a'
  let s:br_orange = '#ba3700'
  let s:br_violet = '#6b40c3'
endif

let g:airline#themes#selenized_bw#palette = {}

let s:NA = [ s:bg_1, s:green, s:term_bg_1, s:term_green ]
let s:NB = [ s:fg_0, s:bg_2, s:term_fg_0, s:term_bg_2 ]
let s:NC = [ s:dim_0, s:bg_1, s:term_dim_0, s:term_bg_1 ]
let s:NC_modified = [ s:yellow, s:NC[1], s:term_yellow, s:NC[3] ]
let g:airline#themes#selenized_bw#palette.normal = airline#themes#generate_color_map(s:NA, s:NB, s:NC)
let g:airline#themes#selenized_bw#palette.normal_modified = {
      \ 'airline_c': s:NC_modified,
      \ }

let s:IA = [ s:bg_1, s:blue, s:term_bg_1, s:term_blue ]
let g:airline#themes#selenized_bw#palette.insert = airline#themes#generate_color_map(s:IA, s:NB, s:NC)
let g:airline#themes#selenized_bw#palette.terminal = airline#themes#generate_color_map(s:IA, s:NB, s:NC)
let g:airline#themes#selenized_bw#palette.insert_modified = copy(g:airline#themes#selenized_bw#palette.normal_modified)

let s:RA = [ s:bg_1, s:red, s:term_bg_1, s:term_red ]
let g:airline#themes#selenized_bw#palette.replace = airline#themes#generate_color_map(s:RA, s:NB, s:NC)
let g:airline#themes#selenized_bw#palette.replace_modified = copy(g:airline#themes#selenized_bw#palette.normal_modified)

let s:VA = [ s:bg_1, s:violet, s:term_bg_1, s:term_violet ]
let g:airline#themes#selenized_bw#palette.visual = airline#themes#generate_color_map(s:VA, s:NB, s:NC)
let g:airline#themes#selenized_bw#palette.visual_modified = copy(g:airline#themes#selenized_bw#palette.normal_modified)

let s:INACTIVE = [ s:dim_0, s:bg_2, s:term_dim_0, s:term_bg_2 ]
let s:INACTIVE_modified = [ s:yellow, s:INACTIVE[1], s:term_yellow, s:INACTIVE[3] ]
let g:airline#themes#selenized_bw#palette.inactive = airline#themes#generate_color_map(s:INACTIVE, s:INACTIVE, s:INACTIVE)
let g:airline#themes#selenized_bw#palette.inactive_modified = {
      \ 'airline_c': s:INACTIVE_modified,
      \ }

let s:WARNING = [ s:bg_1, s:br_yellow, s:term_bg_1, s:term_br_yellow ]
let g:airline#themes#selenized_bw#palette.normal.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.normal_modified.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.insert.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.insert_modified.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.replace.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.replace_modified.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.visual.airline_warning = s:WARNING
let g:airline#themes#selenized_bw#palette.visual_modified.airline_warning = s:WARNING

let s:ERROR = [ s:bg_1, s:br_red, s:term_bg_1, s:term_br_red ]
let g:airline#themes#selenized_bw#palette.normal.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.normal_modified.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.insert.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.insert_modified.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.replace.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.replace_modified.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.visual.airline_error = s:ERROR
let g:airline#themes#selenized_bw#palette.visual_modified.airline_error = s:ERROR

let g:airline#themes#selenized_bw#palette.accents = {
      \ 'red': [ s:red, '', s:term_red, '' ]
      \ }
