" color palette
let s:gui_dark_gray = '#2b2836'
let s:cterm_dark_gray = 235
let s:gui_med_gray_hi = '#dadada'
let s:cterm_med_gray_hi = 253
let s:gui_med_gray_lo = '#4e4e4e'
let s:cterm_med_gray_lo = 239
let s:gui_light_gray = '#1c1c1c'
let s:cterm_light_gray = 234
let s:gui_purple = '#d75fff'
let s:cterm_purple = 171
let s:gui_red = '#ff5e5e'
let s:cterm_red = 9

let g:airline#themes#heman#palette = {}

" normal mode
let s:N1 = [ s:gui_dark_gray , s:gui_med_gray_hi , s:cterm_dark_gray , s:cterm_med_gray_hi ]
let s:N2 = [ s:gui_dark_gray , s:gui_purple , s:cterm_dark_gray , s:cterm_purple ]
let s:N3 = [ s:gui_med_gray_hi , s:gui_dark_gray , s:cterm_med_gray_hi , s:cterm_dark_gray ]
let g:airline#themes#heman#palette.normal = airline#themes#generate_color_map( s:N1 , s:N2 , s:N3 )
let g:airline#themes#heman#palette.normal_modified = {
    \ 'airline_c': [ s:gui_red , s:gui_dark_gray , s:cterm_red , s:cterm_dark_gray , '' ],
    \ }


" insert mode
let g:airline#themes#heman#palette.insert = airline#themes#generate_color_map( s:N1 , s:N2 , s:N3 )
let g:airline#themes#heman#palette.insert_modified = copy( g:airline#themes#angr#palette.normal_modified )

" replace mode
let g:airline#themes#heman#palette.replace = {
    \ 'airline_a': [ s:gui_dark_gray , s:gui_red , s:cterm_dark_gray , s:cterm_red , '' ],
    \ 'airline_c': [ s:gui_red , s:gui_dark_gray , s:cterm_red , s:cterm_dark_gray , '' ],
    \ }
let g:airline#themes#heman#palette.replace_modified = copy( g:airline#themes#angr#palette.insert_modified )


" visual mode
let s:V1 = [ s:gui_dark_gray , s:gui_purple , s:cterm_dark_gray , s:cterm_purple ]
let s:V3 = [ s:gui_dark_gray , s:gui_med_gray_hi , s:cterm_purple , s:cterm_dark_gray ]
let g:airline#themes#heman#palette.visual = airline#themes#generate_color_map( s:V1 , s:N2 , s:V3 )
let g:airline#themes#heman#palette.visual_modified = copy( g:airline#themes#angr#palette.insert_modified )

" inactive window
let s:IA = [ s:gui_light_gray , s:gui_med_gray_lo , s:cterm_light_gray , s:cterm_med_gray_lo , '' ]
let g:airline#themes#heman#palette.inactive = airline#themes#generate_color_map( s:IA, s:IA, s:IA )
let g:airline#themes#heman#palette.inactive_modified = {
    \ 'airline_c': [ s:gui_red , '' , s:cterm_red , '' , '' ],
    \ }

" warnings
let s:ER = airline#themes#get_highlight2([ 'SpellBad', 'bg' ], [ 'SpellBad', 'fg' ], 'bold' )
let g:airline#themes#heman#palette.normal.airline_warning = [
 \ s:ER[1], s:ER[0], s:ER[3], s:ER[2]
 \ ]
let g:airline#themes#heman#palette.normal_modified.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.insert.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.insert_modified.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.visual.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.visual_modified.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.replace.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning
let g:airline#themes#heman#palette.replace_modified.airline_warning =
\ g:airline#themes#heman#palette.normal.airline_warning

" errors
let g:airline#themes#heman#palette.normal.airline_error = [
 \ s:ER[1], s:ER[0], s:ER[3], s:ER[2]
 \ ]
let g:airline#themes#heman#palette.normal_modified.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.insert.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.insert_modified.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.visual.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.visual_modified.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.replace.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error
let g:airline#themes#heman#palette.replace_modified.airline_error =
\ g:airline#themes#heman#palette.normal.airline_error

let g:airline#themes#heman#palette.accents = {
    \ 'red': [ '#5fafff', '' , 75 , '' ]
    \ }
