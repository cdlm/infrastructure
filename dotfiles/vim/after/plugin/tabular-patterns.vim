" Provide additional tabularization patterns
if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif
let s:save_cpo = &cpo
set cpo&vim


AddTabularPattern! colon /^[^:]*: \zs/
AddTabularPattern! space /^\s*\S*\zs\s/l0
AddTabularPattern! latex /&

" From https://gist.github.com/1171605
AddTabularPattern! equals       /^[^=]*\zs=/
AddTabularPattern! hashrocket   /^[^=>]*\zs=>/
AddTabularPattern! commas       /,\s*\zs\s/l0
AddTabularPattern! colons       /^[^:]*:\s*\zs\s/l0

let &cpo = s:save_cpo
unlet s:save_cpo

