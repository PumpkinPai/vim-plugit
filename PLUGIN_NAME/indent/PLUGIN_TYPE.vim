" indent/PLUGIN_TYPE.vim

setlocal indentexpr=PLUGIN_TYPEIndent()

function! PLUGIN_TYPEIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum -1)
  let previous =  getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
    return indent(previousNum) + &tabstop
  endif

endfunction
