#!/bin/bash
set -o nounset -o errexit


if [[ $# < 1 ]]; then
  echo "Usage: remote.sh user@machine"
  exit 1
fi
target="$1"
bootstrap_dir="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"


echo -n "Establishing ssh connection..."
ssh -NM "$target" &
tunnel_pid=$!
trap "echo 'Closing ssh connection'; kill $tunnel_pid" EXIT
echo " pid: $tunnel_pid"


echo -n "Preparing temporary directory..."
target_dir=$(ssh "$target" 'mktemp -d -t bootstrap')
[[ -n "$target_dir" ]] && ssh "$target" "test -d '$target_dir'"
echo " $target_dir"


echo "Copying stuff over..."
tar czf - -C "$bootstrap_dir" . | ssh "$target" "tar xzf - -C $target_dir"


echo "Bootstrapping $target..."
ssh -t "$target" "cd '$target_dir' && ./local.sh"


echo "Done. To clean things up you can run this:"
echo "    ssh \"$target\" \"rm -r '$target_dir'\""

