#
# bash completion support for bazaar http://bazaar-vcs.org.
#
# Copyright (C) 2008 David Nussio <david.nussio@gmail.com>
# Distributed under the GNU General Public License, version 2.0.

_bazaar_whoami ()
{
   local opts prev cur
   
   prev="${COMP_WORDS[COMP_CWORD-1]}"
   cur="${COMP_WORDS[COMP_CWORD]}"
	
   case ${prev} in
      --email)
         email="$(bzr whoami --email 2> /dev/null)"
         opts="${email}"
         ;;
      *)
         _bazaar_show_opts
			return
         ;;
   esac
   
   
   COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}

_bazaar_add ()
{
	local opts prev cur
   
   prev="${COMP_WORDS[COMP_CWORD-1]}"
   cur="${COMP_WORDS[COMP_CWORD]}"
	
   case ${prev} in
      *)
         _bazaar_show_opts
			return
         ;;
   esac
   
   COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}

_bazaar_diff ()
{
	local opts prevprev prev cur

   prevprev="${COMP_WORDS[COMP_CWORD-2]}"
   prev="${COMP_WORDS[COMP_CWORD-1]}"
   cur="${COMP_WORDS[COMP_CWORD]}"
	
	case ${prevprev} in
		-r)
			opts="$(_bazaar_get_rev)"
			;;
		*)
	   case ${prev} in
			-r)
				opts="$(_bazaar_get_rev)"
				;;
	      *)
   	      _bazaar_show_opts
				return
         	;;
		esac
   esac
   
   COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}

_bazaar_get_rev ()
{
	bzr log  | sed -n '/revno: / s/.*:\ // p'
}

_bazaar_append_valid_opt ()
{
   local opts extra
   
   opts=$1
   extra=$2
   
   echo "${opts}$(echo " \"${extra}\"" | sed '/ERROR:/ d')"
}

_bazaar_getopts ()
{
	sed -n -e '/Options:/,/^$/ {
		/-/ {
			s/^\ \+//
			s/,//
			s/\(=\).*/\1/
			s/\(\ \+[A-Z]\+.*\)//
			p
		}
	}' 
}

_bazaar_show_opts ()
{
	local opts prev cur

	prev="${COMP_WORDS[COMP_CWORD-1]}"
	cur="${COMP_WORDS[COMP_CWORD]}"

	opts="$(bzr ${command} --help | _bazaar_getopts)"

	COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}

_bazaar ()
{
   #local command

   COMPREPLY=()
   
   command=${COMP_WORDS[1]}
   
   if [ $COMP_CWORD -eq 1 ] ; then	
      opts=$(bzr help commands | sed -n '/^\w/ p' | awk '{print $1}')
      COMPREPLY=($(compgen -W "${opts}" -- ${command}))
   else
      case "$command" in
         add) _bazaar_add ;;
         alias) _bazaar_show_opts ;;
         annotate) _bazaar_show_opts ;;
         bind) _bazaar_show_opts ;;
         branch) _bazaar_show_opts ;;
         branch) _bazaar_show_opts ;;
         break-lock) _bazaar_show_opts ;;
         cat) _bazaar_show_opts ;;
         check) _bazaar_show_opts ;;
         repository) _bazaar_show_opts ;;
         checkout) _bazaar_show_opts ;;
         commit) _bazaar_show_opts ;;
         conflicts) _bazaar_show_opts ;;
         deleted) _bazaar_show_opts ;;
         diff) _bazaar_diff ;;
         export) _bazaar_show_opts ;;
         help) _bazaar_show_opts ;;
         ignore) _bazaar_show_opts ;;
         ignored) _bazaar_show_opts ;;
         info) _bazaar_show_opts ;;
         init) _bazaar_show_opts ;;
         init-repository) _bazaar_show_opts ;;
         launchpad-login) _bazaar_show_opts ;;
         log) _bazaar_show_opts ;;
         ls) _bazaar_show_opts ;;
         merge) _bazaar_show_opts ;;
         missing) _bazaar_show_opts ;;
         mkdir) _bazaar_show_opts ;;
         mv) _bazaar_show_opts ;;
         nick) _bazaar_show_opts ;;
         pack) _bazaar_show_opts ;;
         plugins) _bazaar_show_opts ;;
         pull) _bazaar_show_opts ;;
         push) _bazaar_show_opts ;;
         reconcile) _bazaar_show_opts ;;
         reconfigure) _bazaar_show_opts ;;
         register-branch) _bazaar_show_opts ;;
         remerge) _bazaar_show_opts ;;
         remove) _bazaar_show_opts ;;
         remove-tree) _bazaar_show_opts ;;
         renames) _bazaar_show_opts ;;
         resolve) _bazaar_show_opts ;;
         revert) _bazaar_show_opts ;;
         revno) _bazaar_show_opts ;;
         root) _bazaar_show_opts ;;
         send) _bazaar_show_opts ;;
         serve) _bazaar_show_opts ;;
         sign-my-commits) _bazaar_show_opts ;;
         split) _bazaar_show_opts ;;
         status) _bazaar_show_opts ;;
         switch) _bazaar_show_opts ;;
         tag) _bazaar_show_opts ;;
         tags) _bazaar_show_opts ;;
         testament) _bazaar_show_opts ;;
         unbind) _bazaar_show_opts ;;
         uncommit) _bazaar_show_opts ;;
         update) _bazaar_show_opts ;;
         upgrade) _bazaar_show_opts ;;
         version) _bazaar_show_opts ;;
         version-info) _bazaar_show_opts ;;
         whoami) _bazaar_whoami ;;
         *) opts="" ;;
      esac
   fi
}

complete -o default -F _bazaar bzr
