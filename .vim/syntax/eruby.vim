" Vim syntax file
" Language:		eRuby
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Info:			$Id$
" URL:			http://vim-ruby.rubyforge.org
" Anon CVS:		See above site
" Release Coordinator:	Doug Kearns <dougkearns@gmail.com>


" ********************* SMcG Additions ***********************
" This assigns the file-extension prior to the .erb to the local variable
" s:base_syntax, for example for file blah.txt.erb this variable would be
" assigned the value 'txt'
let s:base_syntax = matchstr(substitute(expand("%:t"),'\.erb$','',''),'\.\zs\w\+$')
" In some cases this does not map to a valid vim syntax file, give an
" alternate mapping here.
" The easiest way to find out which value to assign to base_syntax is to open
" the file in gvim without the .erb extension and find out what syntax is
" normally applied by typing:
"
"   :echo b:current_syntax
"
" To see the available syntax files:
"   ls /run/pkg/vim-/7.0/share/vim/vim70/syntax/
if s:base_syntax == "bas"
  let s:base_syntax = "vb"
  UltiSnipsAddFiletypes vb.eruby
endif 
if s:base_syntax == "cls"
  let s:base_syntax = "vb"
endif 
if s:base_syntax == "txt"
  let s:base_syntax = "text"
endif 
if s:base_syntax == "s"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "s2"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "inc"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "map"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "lst"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "hex"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "config"
  let s:base_syntax = "pic"
endif 
if s:base_syntax == "h"
  let s:base_syntax = "c"
endif 
if s:base_syntax == "csv"
  let s:base_syntax = "text"
endif 
if s:base_syntax == "sv"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "sv2"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "vr"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "vr2"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "v"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "v2"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "V"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "V2"
  let s:base_syntax = "verilog"
  UltiSnipsAddFiletypes verilog.eruby
endif 
if s:base_syntax == "md"
  let s:base_syntax = "text"
  UltiSnipsAddFiletypes md.html.eruby
endif 
" ******************* End SMcG Additions *********************


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'eruby'
endif

if version < 600
  so <sfile>:p:h/html.vim
  syn include @rubyTop <sfile>:p:h/ruby.vim
else
  " ********************* SMcG Additions ***********************
  exe "runtime! syntax/".s:base_syntax.".vim"   
  "runtime! syntax/html.vim
  " ******************* End SMcG Additions *********************
  unlet b:current_syntax
  syn include @rubyTop syntax/ruby.vim
endif

syn cluster erubyRegions contains=erubyOneLiner,erubyBlock,erubyExpression,erubyComment

syn region  erubyOneLiner   matchgroup=erubyDelimiter start="^%%\@!" end="$"  contains=@rubyTop	       containedin=ALLBUT,@erubyRegions keepend oneline
syn region  erubyBlock	    matchgroup=erubyDelimiter start="<%%\@!" end="%>" contains=@rubyTop	       containedin=ALLBUT,@erubyRegions
syn region  erubyExpression matchgroup=erubyDelimiter start="<%="    end="%>" contains=@rubyTop	       containedin=ALLBUT,@erubyRegions
syn region  erubyComment    matchgroup=erubyDelimiter start="<%#"    end="%>" contains=rubyTodo,@Spell containedin=ALLBUT,@erubyRegions keepend

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_eruby_syntax_inits")
  if version < 508
    let did_ruby_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink erubyDelimiter		Delimiter
  HiLink erubyComment		Comment

  delcommand HiLink
endif
let b:current_syntax = "eruby"

if main_syntax == 'eruby'
  unlet main_syntax
endif

" vim: nowrap sw=2 sts=2 ts=8 ff=unix:
