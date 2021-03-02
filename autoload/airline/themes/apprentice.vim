" vim-airline theme for Apprentice <https://github.com/romainl/Apprentice>
"
" Author:  pt307 (based on work by romainl)
" License: MIT License

let s:almost_black = [ '#1c1c1c', 234 ]
let s:darker_grey  = [ '#262626', 235 ]
let s:medium_grey  = [ '#585858', 240 ]
let s:lighter_grey = [ '#bcbcbc', 250 ]
let s:light_purple = [ '#8787af', 103 ]
let s:light_green  = [ '#87af87', 108 ]
let s:green        = [ '#5f875f',  65 ]
let s:light_blue   = [ '#87afd7', 110 ]
let s:red          = [ '#af5f5f', 131 ]
let s:orange       = [ '#ff8700', 208 ]
let s:ocre         = [ '#87875f', 101 ]
let s:yellow       = [ '#ffffaf', 229 ]

function! s:color_list(fg, bg) abort
  return [a:fg[0], a:bg[0], a:fg[1], a:bg[1]]
endfunction

let g:airline#themes#apprentice#palette = {}

let s:modified = {
  \ 'airline_c': s:color_list(s:orange, '')
  \ }
let s:warning = s:color_list(s:darker_grey, s:orange)
let s:error = s:color_list(s:darker_grey, s:red)

let s:airline_a_normal = s:color_list(s:darker_grey, s:ocre)
let s:airline_b_normal = s:color_list(s:darker_grey, s:medium_grey)
let s:airline_c_normal = s:color_list(s:lighter_grey, s:darker_grey)
let g:airline#themes#apprentice#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let g:airline#themes#apprentice#palette.normal_modified = s:modified
let g:airline#themes#apprentice#palette.normal.airline_warning = s:warning
let g:airline#themes#apprentice#palette.normal_modified.airline_warning = s:warning
let g:airline#themes#apprentice#palette.normal.airline_error = s:error
let g:airline#themes#apprentice#palette.normal_modified.airline_error = s:error

let s:airline_a_insert = s:color_list(s:darker_grey, s:green)
let s:airline_b_insert = s:airline_b_normal
let s:airline_c_insert = s:airline_c_normal
let g:airline#themes#apprentice#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#apprentice#palette.insert_modified = s:modified
let g:airline#themes#apprentice#palette.insert.airline_warning = s:warning
let g:airline#themes#apprentice#palette.insert_modified.airline_warning = s:warning
let g:airline#themes#apprentice#palette.insert.airline_error = s:error
let g:airline#themes#apprentice#palette.insert_modified.airline_error = s:error

let s:airline_a_replace = s:color_list(s:darker_grey, s:red)
let s:airline_b_replace = s:airline_b_normal
let s:airline_c_replace = s:airline_c_normal
let g:airline#themes#apprentice#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_replace, s:airline_c_replace)
let g:airline#themes#apprentice#palette.replace_modified = s:modified
let g:airline#themes#apprentice#palette.replace.airline_warning = s:warning
let g:airline#themes#apprentice#palette.replace_modified.airline_warning = s:warning
let g:airline#themes#apprentice#palette.replace.airline_error = s:error
let g:airline#themes#apprentice#palette.replace_modified.airline_error = s:error

let s:airline_a_visual = s:color_list(s:darker_grey, s:yellow)
let s:airline_b_visual = s:airline_b_normal
let s:airline_c_visual = s:airline_c_normal
let g:airline#themes#apprentice#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#apprentice#palette.visual_modified = s:modified
let g:airline#themes#apprentice#palette.visual.airline_warning = s:warning
let g:airline#themes#apprentice#palette.visual_modified.airline_warning = s:warning
let g:airline#themes#apprentice#palette.visual.airline_error = s:error
let g:airline#themes#apprentice#palette.visual_modified.airline_error = s:error

let s:airline_a_inactive = s:color_list(s:darker_grey, s:medium_grey)
let s:airline_b_inactive = s:color_list(s:medium_grey, s:darker_grey)
let s:airline_c_inactive = s:airline_b_inactive
let g:airline#themes#apprentice#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#apprentice#palette.inactive_modified = s:modified

let g:airline#themes#apprentice#palette.accents = {
  \ 'orange': s:color_list(s:orange, ''),
  \ 'blue': s:color_list(s:light_blue, ''),
  \ 'green': s:color_list(s:light_green, ''),
  \ 'purple': s:color_list(s:light_purple, ''),
  \ 'yellow': s:color_list(s:yellow, ''),
  \ 'red': s:color_list(s:red, '')
  \ }
