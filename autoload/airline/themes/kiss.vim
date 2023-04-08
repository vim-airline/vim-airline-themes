let g:airline#themes#kiss#palette = {}

function! airline#themes#kiss#refresh()
  let s:SL = airline#themes#get_highlight('StatusLine')
  let s:SLNC = airline#themes#get_highlight('StatusLineNC')

  let s:Na = ['#000087', '#ff0000', 18, 9]
  let s:b = ['#ffffff', 'NONE', 14, 'NONE']
  let g:airline#themes#kiss#palette.normal = airline#themes#generate_color_map(s:Na, s:b, s:SL)

  let s:Ia = ['#000087', '#00afff', 18 , 39]
  let s:b = ['#00ffff', 'NONE', 14, 'NONE']
  let g:airline#themes#kiss#palette.insert = airline#themes#generate_color_map(s:Ia, s:b, s:SL)
  let g:airline#themes#kiss#palette.replace = copy(g:airline#themes#kiss#palette.insert)
  let g:airline#themes#kiss#palette.terminal = copy(g:airline#themes#kiss#palette.insert)

  let s:Va = ['#000087', '#ffaf00', 18, 214]
  let s:b = ['#00ffff', 'NONE', 14, 'NONE']
  let g:airline#themes#kiss#palette.visual = airline#themes#generate_color_map(s:Va, s:b, s:SL)

  let s:Ca = ['#00ffff', 'NONE', 14, 'NONE']
  let s:b = ['#00ffff', 'NONE', 14, 'NONE']
  let g:airline#themes#kiss#palette.commandline = airline#themes#generate_color_map(s:Ca, s:b, s:SL)

  let g:airline#themes#kiss#palette.normal.airline_error   = s:SLNC
  let g:airline#themes#kiss#palette.normal.airline_warning = s:SLNC
  let g:airline#themes#kiss#palette.normal.airline_term    = s:SL

  let g:airline#themes#kiss#palette.inactive = airline#themes#generate_color_map(s:SLNC, s:SLNC, s:SLNC)
endfunction

call airline#themes#kiss#refresh()
