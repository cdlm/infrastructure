" Provide additional tabularization patterns
if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif
let s:save_cpo = &cpo
set cpo&vim


AddTabularPattern! colon-space /^[^:]*: \zs


let &cpo = s:save_cpo
unlet s:save_cpo

