" vim: et:ts=2:sts:sw=2
" Author: @bekcpear
" https://gist.github.com/bekcpear/41fb86e0817dfb6620b757daf1e2aab0

scriptencoding utf-8

let g:airline#themes#lessnoise#palette = {}
""
" Statusline sections: |a|b|c -- x|y|z|others
" COLOR DEFINE
let s:rac = ['#D75F5F', 167] "  red accent fg
let s:nfg = ['#121212', 233] "      normal fg; for   a section
let s:ifg = s:nfg            "      insert fg; for   a section
let s:rfg = s:nfg            "     replace fg; for   a section
let s:vfg = s:nfg            "      visual fg; for a&z sections
let s:cfg = s:nfg            " commandline fg; for all sections
let s:nbg = ['#AFFFFF', 159] "      normal bg; for   a section
let s:ibg = ['#FFAFD7', 218] "      insert bg; for   a section
let s:rbg = ['#FF5F5F', 203] "     replace bg; for   a section
let s:vbg = ['#FFFFAF', 229] "      visual bg; for a&z sections
let s:cbg = ['#AFFFFF', 159] " commandline bg; for all sections

let s:fg  = ['#6C6C6C', 242] "       other fg
let s:bg  = ['#303030', 236] "       other bg

" tabline colors defined below

let s:palt = {
      \ 'airline_a': [  s:nfg[0], s:nbg[0], s:nfg[1], s:nbg[1],   'bold' ],
      \ 'airline_b': [ '#EEEEEE',  s:bg[0],      255,  s:bg[1],   'NONE' ],
      \ 'airline_c': [ '#9E9E9E',  s:bg[0],      247,  s:bg[1], 'italic' ],
      \ 'airline_x': [   s:fg[0],  s:bg[0],  s:fg[1],  s:bg[1],   'NONE' ],
      \ 'airline_y': [   s:fg[0],  s:bg[0],  s:fg[1],  s:bg[1],   'NONE' ],
      \ 'airline_z': [   s:fg[0],  s:bg[0],  s:fg[1],  s:bg[1],   'NONE' ]
      \ }
let s:palt_m = {
      \ 'airline_c': [ '#B2B2B2',  s:bg[0],      249,  s:bg[1], 'italic' ],
      \ }
" get around vim-airline issue#2298
" https://github.com/vim-airline/vim-airline/issues/2298
  if has('gui_running')
    let s:palt.airline_y[2] = s:bg[1]
  else
    let s:palt.airline_y[0] = s:bg[0]
  endif

""
" NORMAL
let g:airline#themes#lessnoise#palette.normal          = s:palt
let g:airline#themes#lessnoise#palette.normal_modified = s:palt_m

""
" INSERT
let s:palt_i   = deepcopy(s:palt)
let s:palt_i_m = deepcopy(s:palt_m)

let s:palt_i.airline_a[0] = s:ifg[0]
let s:palt_i.airline_a[2] = s:ifg[1]
let s:palt_i.airline_a[1] = s:ibg[0]
let s:palt_i.airline_a[3] = s:ibg[1]

let g:airline#themes#lessnoise#palette.insert          = s:palt_i
let g:airline#themes#lessnoise#palette.insert_modified = s:palt_i_m
  "let g:airline#themes#lessnoise#palette.insert_paste = {}

""
" TERMINAL
let g:airline#themes#lessnoise#palette.terminal        = s:palt

""
" REPLACE
let s:palt_r   = deepcopy(s:palt)
let s:palt_r_m = deepcopy(s:palt_m)

let s:palt_r.airline_a[0] = s:rfg[0]
let s:palt_r.airline_a[2] = s:rfg[1]
let s:palt_r.airline_a[1] = s:rbg[0]
let s:palt_r.airline_a[3] = s:rbg[1]

let g:airline#themes#lessnoise#palette.replace          = s:palt_r
let g:airline#themes#lessnoise#palette.replace_modified = s:palt_r_m

"
" VISUAL
let s:palt_v   = deepcopy(s:palt)
let s:palt_v_m = deepcopy(s:palt_m)

let s:palt_v.airline_a[0] = s:vfg[0]
let s:palt_v.airline_a[2] = s:vfg[1]
let s:palt_v.airline_a[1] = s:vbg[0]
let s:palt_v.airline_a[3] = s:vbg[1]
let s:palt_v.airline_z[0] = s:vfg[0]
let s:palt_v.airline_z[2] = s:vfg[1]
let s:palt_v.airline_z[1] = s:vbg[0]
let s:palt_v.airline_z[3] = s:vbg[1]

let g:airline#themes#lessnoise#palette.visual          = s:palt_v
let g:airline#themes#lessnoise#palette.visual_modified = s:palt_v_m

"
" INACTIVE
let s:palt_d   = deepcopy(s:palt)
let s:palt_d_m = deepcopy(s:palt_m)

let s:palt_d.airline_a[0] = s:fg[0]
let s:palt_d.airline_a[1] = s:bg[0]
let s:palt_d.airline_a[2] = s:fg[1]
let s:palt_d.airline_a[3] = s:bg[1]
let s:palt_d.airline_b[0] = s:fg[0]
let s:palt_d.airline_b[2] = s:fg[1]
let s:palt_d.airline_c[0] = s:fg[0]
let s:palt_d.airline_c[2] = s:fg[1]
let s:palt_d.airline_c[4] = 'NONE'

let g:airline#themes#lessnoise#palette.inactive          = s:palt_d
let g:airline#themes#lessnoise#palette.inactive_modified = s:palt_d_m

"
" COMMANDLINE
let s:palt_c   = deepcopy(s:palt)

for pk in keys(s:palt_c)
  let s:palt_c[pk][0] = s:cfg[0]
  let s:palt_c[pk][2] = s:cfg[1]
  let s:palt_c[pk][1] = s:cbg[0]
  let s:palt_c[pk][3] = s:cbg[1]
endfor
" get around vim-airline issue#2298
" https://github.com/vim-airline/vim-airline/issues/2298
  if has('gui_running')
    let s:palt_c.airline_b[2] = s:cbg[1]
    let s:palt_c.airline_y[2] = s:cbg[1]
  else
    let s:palt_c.airline_b[0] = s:cbg[0]
    let s:palt_c.airline_y[0] = s:cbg[0]
  endif

let g:airline#themes#lessnoise#palette.commandline = s:palt_c

"
" READONLY Accent, red
let g:airline#themes#lessnoise#palette.accents = {
      \ 'red': [s:rac[0], '', s:rac[1], '']
      \ }

"
" TABLINE
let s:atbg   = ['#080808', 232]
let s:atl    = ['#444444', s:atbg[0], 238, s:atbg[1], 'NONE']
let s:ats    = ['#D0D0D0', '#1C1C1C', 252,       234, 'NONE']
let s:atf    = s:atl
let s:at     = deepcopy(s:atl)
let s:at[0]  = '#6C6C6C'
let s:at[2]  = 242
let s:atm    = deepcopy(s:ats)
let s:atu    = deepcopy(s:at)
let s:atm[4] = 'italic,bold'
let s:atu[4] = 'italic,bold' " according to issue#2298, this attribute may be invalid
let g:airline#themes#lessnoise#palette.tabline = {
      \ 'airline_tablabel'          : s:atl,
      \ 'airline_tab'               : s:at,
      \ 'airline_tabsel'            : s:ats,
      \ 'airline_tabfill'           : s:atf,
      \ 'airline_tabmod'            : s:atm,
      \ 'airline_tabhid'            : s:at,
      \ 'airline_tabmod_unsel'      : s:atu,
      \ 'airline_tab_right'         : s:at,
      \ 'airline_tabsel_right'      : s:ats,
      \ 'airline_tabfill_right'     : s:atf,
      \ 'airline_tabmod_right'      : s:atm,
      \ 'airline_tabhid_right'      : s:at,
      \ 'airline_tabmod_unsel_right': s:atu
      \ }

"
" CtrlP
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#lessnoise#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#AFD7FF', '#5F87FF', 153,  69, 'NONE'],
      \ [ '#FFFFFF', '#87AFFF', 231, 111, 'NONE'],
      \ [ '#5F87FF', '#FFFFFF',  69, 231, 'bold'])
endif
