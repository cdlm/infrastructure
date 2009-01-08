function stmv() {
	from="$1"
	to="$2"
	img=${3:-image}
	chg=${4:-changes}
	mv "$from.$img" "$to.$img"
	mv "$from.$chg" "$to.$chg"
}

function sqmv() {
	stmv "$1" "$2" image changes
}

function vwmv() {
	stmv "$1" "$2" im cha
}
