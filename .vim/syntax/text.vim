" Vim syntax file

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Start spell checking on the first char or the line, and never end
syn region textLine start=/./ end="never_end_I_dont_know_a_better_way_to_do_this" contains=@Spell

let b:current_syntax = "text"
