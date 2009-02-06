### bookmark.sh
# Manage filesystem bookmarks in the shell
#
# Todo:
#  - parse options as flags to act on a set of arguments ?

# to be sourced
# set -x

[ "$BOOKMARK_DATA" == "" ] && export BOOKMARK_DATA="${HOME}/.bash.d/bookmarks"
[ -d "${BOOKMARK_DATA}" ] || mkdir -p "${BOOKMARK_DATA}"

bookmark_usage() {
	cat <<-HELP >&2
		Usage: bookmark NAME
		       bookmark -o NAME
		       bookmark [-h] [-l [NAMEs]]
		       bookmark -a NAME
		       bookmark -d NAME
	HELP
}

terminal_setTabTitle() {
	echo -ne "\e]1;$1\a"
}

bookmark_help() {
	cat <<-HELP >&2
		bookmark - directory bookmarks for quick shell navigation.
		
	HELP
	bookmark_usage
}

bookmark_defined() {
	(
		cd ${BOOKMARK_DATA}
		# echo ${*:-*}
		for name in ${*:-*}; do echo ${name}; done
	)
}

bookmark_read() {
	local bmkname=${1%%/*}
	echo $(readlink ${BOOKMARK_DATA}/${bmkname})${1#${bmkname}}
}

bookmark_go() {
	pushd "$(bookmark_read $1)"
	terminal_setTabTitle $1
}

bookmark_list() {
		for name in $(bookmark_defined $*); do
			echo "${name} -> " $(bookmark_read ${name})
		done
}

bookmark_add() {
	local path="$1" name="$2"
	[ "${path:0:1}" == "/" ] || path="${PWD}/${path}" # ensure the path is absolute
	[ -d "${path}" ] || path=`dirname "${path}"` # ensure directory, or take parent
	name=`basename "${name}"` # ensure the bookmark name has no directory part

	ln -s "${path}" "${BOOKMARK_DATA}/${name}" && terminal_setTabTitle "${name}"
	bookmark_list "${name}"
}

bookmark_delete() {
	for name in $*; do
		rm "${BOOKMARK_DATA}/${name}"
	done
}

### Main function, others should be usable alone but...
bookmark() {
	# no argument
	if [ $# == 0 ]; then
		bookmark_list
		return
	fi

	# handle options
	params=`getopt hleota:d: $*`
	[ $? == 0 ] || { bookmark_usage; return 1; }
	set -- ${params/--}
	open_editor=0
	for param; do
		case $param in
		-h)
			bookmark_help;;
		-l)
			shift
			bookmark_list "$*"
			break;;
		-a)
			bookmark_add . "$2"
			break;;
		-d)
			shift
			bookmark_delete "$*"
			return;;
		-e)
			shift
			$EDITOR "$(bookmark_read $1)"
			bookmark_go "$1"
			break;;
		-o)
			shift
			open "$(bookmark_read $1)"
			break;;
		-t) # convenience
			shift
			terminal_setTabTitle "${1:-`basename $PWD`}"
			break;;
		*) # one argument but no option, go to the bookmark
			bookmark_go "$1";;
		esac
	done
}
alias bmk=bookmark

### Bash completion
bookmark_complete() {
	local current prefix suffix
	current=${COMP_WORDS[COMP_CWORD]}
	suffix=${current##*/}
	prefix=${current%$suffix}
	COMPREPLY=( $( cd ${BOOKMARK_DATA} \
		&& compgen -o filenames -o nospace \
			-W "$( /bin/ls -L1 "${BOOKMARK_DATA}/${prefix}" )" \
			-- ${suffix} ) )
	# COMPREPLY=( $(
	# 	cd ${BOOKMARK_DATA}
	# 	/bin/ls -1 ./${prefix} | grep "^${suffix}"
	# ) )
	COMPREPLY=( ${COMPREPLY[@]/#/"$prefix"} )
}

if [[ -f /etc/bash_completion || -f /opt/local/etc/bash_completion ]]; then
	complete -F bookmark_complete -o filenames -o nospace bmk
fi
