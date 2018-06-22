" Name: Solarized Flood
" Changed: June 22 2018, UTC+8
" Website: https://github.com/Neur1n/solarized_flood
" Description:
"   A vim-airline theme made based on and tested with the Solarized colorscheme
"   (https://github.com/frankier/neovim-colors-solarized-truecolor-only) in
"   Windows 10 OS and GVim 8.1.
"
"   This script is based on the "dark" theme. The "inactive" mode were not
"   changed.
"
"   It is call "flood" since the statusline and the tabline will be highlighted
"   with the "base03" color in Solarized (dark). If you use the dark Solarized
"   colorscheme for Vim and, in Windows, set "Personalization-Colors-Choose
"   your color - Custom color" to be "#002B36" (*), then most parts of the GVim
"   window will be "flooded" with the color.
"   NOTE: This will make some components of the airline less distinguishable
"         from the others. If anyone has better ideas, I will be happy to take
"         a conversation with you. :)

"   (*): Your PC may not support the exact color but it will pick the nearest
"        color for you and it should work fine.


scriptencoding utf-8

" The following color definitions:
"   "hex":  originated from official solarized (dark) colors
"   "term": calculated by "x256" package of Python
"   "*":    "term" value that is different with solarized official definition
"   "#":    picked manually
let s:base03  = {'hex': '#002b36', 'term': 234}  "   0,  43,  54
let s:base02  = {'hex': '#073642', 'term': 235}  "   7,  54,  66
let s:base01  = {'hex': '#586e75', 'term': 242}  "  88, 110, 117 *
let s:base00  = {'hex': '#657b83', 'term':  66}  " 101, 123, 131 *

let s:base0   = {'hex': '#839496', 'term': 246}  " 131, 148, 150 *
let s:base1   = {'hex': '#93a1a1', 'term': 247}  " 147, 161, 161 *
let s:base2   = {'hex': '#eee8d5', 'term': 254}  " 238, 232, 213
let s:base3   = {'hex': '#fdf6e3', 'term': 230}  " 253, 246, 227

let s:yellow  = {'hex': '#b58900', 'term': 136}  " 181, 137,   0
let s:orange  = {'hex': '#cb4b16', 'term': 166}  " 203,  75,  22
let s:red     = {'hex': '#dc322f', 'term': 160}  " 220,  50,  47 *
let s:magenta = {'hex': '#d33682', 'term': 168}  " 211,  54, 130 *
let s:violet  = {'hex': '#6c71c4', 'term':  62}  " 108, 113, 196 *
let s:blue    = {'hex': '#268bd2', 'term':  32}  "  38, 139, 210 *
let s:cyan    = {'hex': '#2aa198', 'term':  36}  "  42, 161, 152 *
let s:green   = {'hex': '#859900', 'term': 106}  " 133, 153,   0 #


let s:style = get(g:, 'solarized_flood_nv_mode_style', 'NONE')

let g:airline#themes#solarized_flood#palette = {}

" *****************************************************************************
"                                                                   Normal Mode
" *****************************************************************************
let s:airline_a_normal = [s:base03['hex'],  s:green['hex'],
                        \ s:base03['term'], s:green['term'], s:style]

let s:airline_c_normal = [s:cyan['hex'],  s:base03['hex'],
                        \ s:cyan['term'], s:base03['term'], s:style]

if get(g:, 'solarized_flood_dam', 0)
    let s:airline_b_normal = [s:base2['hex'],  s:green['hex'],
                            \ s:base2['term'], s:green['term'], s:style]

    let g:airline#themes#solarized_flood#palette.normal_modified = {
          \ 'airline_c': [s:base03['hex'],  s:green['hex'],
          \               s:base03['term'], s:green['term'], s:style]}
else
    let s:airline_b_normal = [s:base2['hex'],  s:base03['hex'],
                            \ s:base2['term'], s:base03['term'], s:style]

    let g:airline#themes#solarized_flood#palette.normal_modified = {
          \ 'airline_c': [s:magenta['hex'],  s:base03['hex'],
          \               s:magenta['term'], s:base03['term'], s:style]}
endif

let g:airline#themes#solarized_flood#palette.normal =
      \ airline#themes#generate_color_map(s:airline_a_normal,
      \                                   s:airline_b_normal,
      \                                   s:airline_c_normal)

let g:airline#themes#solarized_flood#palette.normal['airline_y'] =
      \ [s:base00['hex'], s:base03['hex'], s:base00['term'], s:base03['term'],
      \  s:style]

let g:airline#themes#solarized_flood#palette.normal['airline_z'] =
      \ [s:green['hex'], s:base03['hex'], s:green['term'], s:base03['term'],
      \  s:style]

" *****************************************************************************
"                                                                   Insert Mode
" *****************************************************************************
let s:airline_a_insert = [s:base03['hex'] , s:cyan['hex'],
                        \ s:base03['term'], s:cyan['term'], 'bold']

let s:airline_c_insert = [s:blue['hex'],  s:base03['hex'],
                        \ s:blue['term'], s:base03['term'], 'bold']

if get(g:, 'solarized_flood_dam', 0)
    let s:airline_b_insert = [s:base2['hex'],  s:cyan['hex'],
                            \ s:base2['term'], s:cyan['term'], 'bold']

    let g:airline#themes#solarized_flood#palette.insert_modified = {
          \ 'airline_c': [s:base03['hex'],  s:cyan['hex'],
          \               s:base03['term'], s:cyan['term'], 'bold']}
else
    let s:airline_b_insert = [s:base2['hex'],  s:base03['hex'],
                            \ s:base2['term'], s:base03['term'], 'bold']

    let g:airline#themes#solarized_flood#palette.insert_modified = {
          \ 'airline_c': [s:magenta['hex'],  s:base03['hex'],
          \               s:magenta['term'], s:base03['term'], 'bold']}
endif

let g:airline#themes#solarized_flood#palette.insert =
      \ airline#themes#generate_color_map(s:airline_a_insert,
      \                                   s:airline_b_insert,
      \                                   s:airline_c_insert)

let g:airline#themes#solarized_flood#palette.insert['airline_y'] =
      \ [s:base00['hex'], s:base03['hex'], s:base00['term'], s:base03['term'],
      \  s:style]

let g:airline#themes#solarized_flood#palette.insert['airline_z'] =
      \ [s:cyan['hex'], s:base03['hex'], s:cyan['term'], s:base03['term'],
      \  'bold']

let g:airline#themes#solarized_flood#palette.insert_paste = {
      \ 'airline_a': [s:base03['hex'],  s:cyan['hex'],
      \               s:base03['term'], s:cyan['term'], 'bold']}

" *****************************************************************************
"                                                                   Visual Mode
" *****************************************************************************
let s:airline_a_visual = [s:base03['hex'],  s:yellow['hex'],
                        \ s:base03['term'], s:yellow['term'], s:style]

let s:airline_c_visual = [s:orange['hex'],  s:base03['hex'],
                        \ s:orange['term'], s:base03['term'], s:style]

if get(g:, 'solarized_flood_dam', 0)
    let s:airline_b_visual = [s:base2['hex'],  s:yellow['hex'],
                            \ s:base2['term'], s:yellow['term'], s:style]

    let g:airline#themes#solarized_flood#palette.visual_modified = {
          \ 'airline_c': [s:base03['hex'],  s:yellow['hex'],
          \               s:base03['term'], s:yellow['term'], s:style]}
else
    let s:airline_b_visual = [s:base2['hex'],  s:base03['hex'],
                            \ s:base2['term'], s:base03['term'], s:style]

    let g:airline#themes#solarized_flood#palette.visual_modified = {
          \ 'airline_c': [s:magenta['hex'],  s:base03['hex'],
          \               s:magenta['term'], s:base03['term'], s:style]}
endif

let g:airline#themes#solarized_flood#palette.visual =
      \ airline#themes#generate_color_map(s:airline_a_visual,
      \                                   s:airline_b_visual,
      \                                   s:airline_c_visual)

let g:airline#themes#solarized_flood#palette.visual['airline_y'] =
      \ [s:base00['hex'], s:base03['hex'], s:base00['term'], s:base03['term'],
      \  s:style]

let g:airline#themes#solarized_flood#palette.visual['airline_z'] =
      \ [s:yellow['hex'], s:base03['hex'], s:yellow['term'], s:base03['term'],
      \  'NONE']

" *****************************************************************************
"                                                                  Replace Mode
" *****************************************************************************
let s:airline_a_replace = [s:base03['hex'] , s:violet['hex'],
                         \ s:base03['term'], s:violet['term'], 'bold']

let s:airline_c_replace = [s:magenta['hex'],  s:base03['hex'],
                         \ s:magenta['term'], s:base03['term'], 'bold']

if get(g:, 'solarized_flood_dam', 0)
    let s:airline_b_replace = [s:base2['hex'],  s:violet['hex'],
                             \ s:base2['term'], s:violet['term'], 'bold']

    let g:airline#themes#solarized_flood#palette.replace_modified = {
          \ 'airline_c': [s:base03['hex'],  s:violet['hex'],
          \               s:base03['term'], s:violet['term'], 'bold']}
else
    let s:airline_b_replace = [s:base2['hex'],  s:base03['hex'],
                             \ s:base2['term'], s:base03['term'], 'bold']

    let g:airline#themes#solarized_flood#palette.replace_modified = {
          \ 'airline_c': [s:magenta['hex'],  s:base03['hex'],
          \               s:magenta['term'], s:base03['term'], 'bold']}
endif

let g:airline#themes#solarized_flood#palette.replace =
      \ airline#themes#generate_color_map(s:airline_a_replace,
      \                                   s:airline_b_replace,
      \                                   s:airline_c_replace)

let g:airline#themes#solarized_flood#palette.replace['airline_y'] =
      \ [s:base00['hex'], s:base03['hex'], s:base00['term'], s:base03['term'],
      \  s:style]

let g:airline#themes#solarized_flood#palette.replace['airline_z'] =
      \ [s:violet['hex'], s:base03['hex'], s:violet['term'], s:base03['term'],
      \  'bold']

" *****************************************************************************
"                                                                 Inactive Mode
" *****************************************************************************
let s:airline_a_inactive = ['#4e4e4e', '#1c1c1c', 239, 234, 'bold']
let s:airline_b_inactive = ['#4e4e4e', '#262626', 239, 235, 'bold']
let s:airline_c_inactive = ['#4e4e4e', '#303030', 239, 236, 'bold']
let g:airline#themes#solarized_flood#palette.inactive =
      \ airline#themes#generate_color_map(s:airline_a_inactive,
      \                                   s:airline_b_inactive,
      \                                   s:airline_c_inactive)
let g:airline#themes#solarized_flood#palette.inactive_modified = {
      \ 'airline_c': ['#875faf', '', 97, '', 'bold'] ,
      \ }

" *****************************************************************************
"                                                                Linter Section
" *****************************************************************************
let g:airline#themes#solarized_flood#palette.normal.airline_warning =
    \ [s:yellow['hex'], s:base03['hex'], s:yellow['term'], s:base03['term'],
    \  'bold']
let g:airline#themes#solarized_flood#palette.normal_modified.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.insert.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.insert_modified.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.visual.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.visual_modified.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.replace.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning
let g:airline#themes#solarized_flood#palette.replace_modified.airline_warning =
    \ g:airline#themes#solarized_flood#palette.normal.airline_warning

let g:airline#themes#solarized_flood#palette.normal.airline_error =
    \ [s:red['hex'], s:base03['hex'], s:red['term'], s:base03['term'], 'bold']
let g:airline#themes#solarized_flood#palette.normal_modified.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.insert.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.insert_modified.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.visual.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.visual_modified.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.replace.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error
let g:airline#themes#solarized_flood#palette.replace_modified.airline_error =
    \ g:airline#themes#solarized_flood#palette.normal.airline_error

" *****************************************************************************
"                                                                       Tabline
" *****************************************************************************
let g:airline#themes#solarized_flood#palette.tabline = {
      \ 'airline_tablabel':     [s:yellow['hex'], s:base03['hex'],
      \                          s:yellow['term'], s:base03['term'], 'italic'],
      \ 'airline_tab':          [s:base2['hex'], s:base03['hex'],
      \                          s:base2['term'], s:base03['term'], 'bold'],
      \ 'airline_tabsel':       [s:base03['hex'], s:green['hex'],
      \                          s:base03['term'], s:green['term'], 'bold'],
      \ 'airline_tabmod':       [s:base03['hex'], s:cyan['hex'],
      \                          s:base03['term'], s:cyan['term'], 'bold'],
      \ 'airline_tabmod_unsel': [s:magenta['hex'], s:base03['hex'],
      \                          s:magenta['term'], s:base03['term'], 'bold'],
      \ 'airline_tabhid':       [s:base01['hex'], s:base03['hex'],
      \                          s:base01['term'], s:base03['term'], 'NONE'],
      \ }

" *****************************************************************************
"                                                                       Accents
" *****************************************************************************
if get(g:, 'solarized_flood_dam', 0)
    let g:airline#themes#solarized_flood#palette.accents = {
          \ 'red': [s:base2['hex'], '', s:base2['term'], '',  'bold']
          \ }
else
    let g:airline#themes#solarized_flood#palette.accents = {
          \ 'red': [s:red['hex'], '', s:red['term'], '',  'bold']
          \ }
endif
