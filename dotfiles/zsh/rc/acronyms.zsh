if has_command wtf; then
    acronymdb=(~/.acronyms `brew --prefix`/opt/wtf/share/misc/acronyms{,.comp})
    export ACRONYMDB="${acronymdb[*]}"
fi
