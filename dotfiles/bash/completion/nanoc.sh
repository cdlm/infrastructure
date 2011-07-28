function _nanoc() {
    local cur commands short_opts long_opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    commands="autocompile compile create_item create_layout create_site debug help info update view"
    short_opts="-d -h -C -V -v -w"
    long_opts="--debug --help --no-color --verbose --version --warn"

    case ${cur} in
        --*)
            COMPREPLY=( $(compgen -W "${long_opts}" -- ${cur}) )
            return 0 ;;
        -*)
            COMPREPLY=( $(compgen -W "${short_opts}" -- ${cur}) )
            return 0 ;;
        *)
            COMPREPLY=( $(compgen -W "${commands}" -- ${cur}) )
            return 0 ;;
    esac
}
complete -F _nanoc nanoc

