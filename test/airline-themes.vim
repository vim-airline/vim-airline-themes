scriptencoding utf-8

let s:themes_dir = expand('<sfile>:h:h') . '/autoload/airline/themes'
let s:themes = map(glob(s:themes_dir . '/*.vim', 1, 1), 'fnamemodify(v:val, ":t:r")')
let s:suite = themis#suite('vim-airline-themes')

function! s:Test_AirlineTheme(theme)
  Throws execute('AirlineTheme ' . a:theme)
endfunction

function! s:command_insert(theme)
  execute('AirlineTheme ' . a:theme)
  execute('source ' . expand('<sfile>:h:h') . '/autoload/airline/themes/' . a:theme . '.vim')
  Throws normal! i
endfunction

function! s:command_command(theme)
  execute('AirlineTheme ' . a:theme)
  execute('source ' . expand('<sfile>:h:h') . '/autoload/airline/themes/' . a:theme . '.vim')
  Throws normal! :
endfunction

function! s:suite.__insert__()
  let child = themis#suite('INSERT')
  for theme in s:themes
    let child[theme] = funcref('s:command_insert', [theme])
  endfor
endfunction

function! s:suite.__command__()
  let child = themis#suite('COMMAND')
  for theme in s:themes
    let child[theme] = funcref('s:command_command', [theme])
  endfor
endfunction
