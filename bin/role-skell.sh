#!/bin/bash

# AUX FUNCTIONS
function eecho() {
	>&2 echo $@
}

function checkEnv() {
	case $1 in
		des|hml|prd|new)
			return 0
		;;
		*)
			eecho "You *must* inform the 'environment' in the form (des|hml|prd|new)."
			return 1
		;;
	esac
}

# MAIN SCRIPT

if [ $# -ne 1 ]; then
	eecho "You *must* inform the 'role name'."
	exit 1
fi

#checkEnv $1
if [ $? -eq 0 ]; then
	echo "Criando `dirname $(readlink -f $0)`/../playbooks/roles/$1/{files,templates,tasks,handlers,vars,defaults,meta}"
	mkdir -p `dirname $(readlink -f $0)`/../playbooks/roles/$1/{files,templates,tasks,handlers,vars,defaults,meta}
	touch -a `dirname $(readlink -f $0)`/../playbooks/roles/$1/{files,templates,tasks,handlers,vars,defaults,meta}/main.yml
fi
exit $?
