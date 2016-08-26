" indent/PLUGIN_TYPE.vim

setlocal indentexpr=PLUG_TYPE_FUNCTIONIndent()

function! PLUG_TYPE_FUNCTIONIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum -1)
  let previous =  getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
    return indent(previousNum) + &tabstop
  endif

endfunction
