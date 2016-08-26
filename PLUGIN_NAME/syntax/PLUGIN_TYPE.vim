" syntax/PLUGIN_TYPE.vim
" PLUGIN_TYPE Syntax File
" Language: PLUGIN_TYPE



"""""""""""""""""""""""""""""""""""""""
" BOILER PLATE STUFF
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" nocompatible mode for lines with backslashes
let s:cpo_save = &cpo
set cpo&vim
"
"""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""
" SYNTAX DEFINITION EXAMPLES
"""""""""""""""""""""""""""""""""""""""

" COMMENT NOTES "
syntax keyword PLUGIN_TYPETodo
\ todo Todo TODO fixme Fixme FIXME bug Bug BUG xxx XXX

" DEBUGGING NOTES "
syntax keyword PLUGIN_TYPEDebug
\ debug Debug DEBUG temp Temp TEMP

" FUNCTIONS "
syntax keyword PLUGING_TYPEFunction
\ functionOne
\ functionTwo

" EVENTS "
syntax keyword PLUGIN_TYPEEvent
\ button_press
\ sky_falls

" CONSTANTS "
syntax keyword PLUGIN_TYPEConstant
\ TRUE
\ FALSE
\ PI
\ ZERO_VECTOR

" CONDITIONALS "
syntax keyword PLUGIN_TYPEConditional
\ if
\ else

" Repeats "
syntax keyword PLUGIN_TYPERepeat
\ do
\ while
\ for
\ return

" TYPES "
syntax keyword PLUGIN_TYPEType
\ string
\ integer
\ float

" LABELS "
syntax keyword PLUGIN_TYPELabel
\ state default


"" DISPLAY TYPES ""
syntax region PLUGIN_TYPEComment display
\ start='\/\/' end='$' contains=PLUGIN_TYPETodo,@Spell

syntax match PLUGIN_TYPENumber display
\ /[0-9]/

syntax region PLUGIN_TYPEString display
\ start='"' skip='//.' end='"' contains=@Spell

syntax region PLUGIN_TYPEBlock display
\ start='{' end='}' fold transparent contains=ALL

syntax match PLUGIN_TYPEOperator display
\ /[!%<>=*\+\-\|&\?\^~]/

syntax match PLUGIN_TYPEOperator display
\ /\/\(\/\)\@!/


"" HIGHLIGHTING ""
highlight default link PLUGIN_TYPETodo      Todo
highlight default link PLUGIN_TYPEDebug     Special
highlight default link PLUGIN_TYPEComment   Comment

highlight default link PLUGIN_TYPEFunction  Function
highlight default link PLUGIN_TYPEEvent     Function
highlight default link PLUGIN_TYPEConstant  Constant

highlight default link PLUGIN_TYPEType      Type
highlight default link PLUGIN_TYPEConditional Conditional
highlight default link PLUGIN_TYPERepeat    Repeat
highlight default link PLUGIN_TYPELabel     Label
highlight default link PLUGIN_TYPEOperator  Operator

highlight default link PLUGIN_TYPEString    String
highlight default link PLUGIN_TYPENumber    Number
highlight default link PLUGIN_TYPEBlock     Special





""""""""""""""""""""""""""""""""""""""""
"  MORE BOILER PLATE FOR THE END
""""""""""""""""""""""""""""""""""""""""
let b:current_syntax = "PLUGIN_TYPE"

let &cpo = s:cpo_save
unlet s:cpo_save
""""""""""""""""""""""""""""""""""""""""
