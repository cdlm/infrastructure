" Inspired from
" http://www.codeography.com/2010/02/20/making-vim-play-nice-with-jekylls-yaml-front-matter.html

let s:current_syntax=b:current_syntax
unlet b:current_syntax
syntax include @Yaml syntax/yaml.vim

syntax sync linebreaks=1

syntax region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml,@Spell

highlight link yamlFrontmatter Comment

let b:current_syntax=s:current_syntax
unlet s:current_syntax
