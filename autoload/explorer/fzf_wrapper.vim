function! s:AirlineThemesList()
  let themes = globpath(&rtp, 'autoload/airline/themes/*.vim', 0, 1)
  return map(themes, 'fnamemodify(v:val, ":t:r")')
endfunction

function! s:ExitExplorer(code)
  if exists('s:airline_theme_orig')
    if a:code > 0
      execute 'AirlineTheme ' . s:airline_theme_orig
    endif
    unlet s:airline_theme_orig
  endif
  call fzf#vim#ipc#stop()
endfunction

function! explorer#fzf_wrapper#browse(bang)
  if !exists('g:loaded_fzf_vim')
    echoerr "fzf.vim plugin is required for explorer"
    return
  endif

  let themes = s:AirlineThemesList()

  if exists('g:airline_theme')
    let s:airline_theme_orig = g:airline_theme
    let themes = [g:airline_theme] + filter(themes, 'g:airline_theme != v:val')
  endif

  let spec = {
        \ 'source': themes,
        \ 'sink': 'AirlineTheme',
        \ 'options': ['+m', '--prompt', 'AirlineThemes> ']
        \ }

  if !a:bang
    let fifo = fzf#vim#ipc#start({ msg -> execute('AirlineTheme '.msg) })
    if len(fifo)
      call extend(spec.options, ['--no-tmux', '--no-padding', '--no-margin',
            \ '--bind', 'focus:execute-silent:echo {} > '.fifo])
      let spec.exit = function('s:ExitExplorer')
      let maxwidth = max(map(copy(themes), 'strwidth(v:val)'))
      let spec.window = { 'width': maxwidth + 8, 'height': len(themes) + 5 }
    endif
  endif

  call fzf#run(fzf#wrap(spec))
endfunction
