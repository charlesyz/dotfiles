# Generic $dotdir/bashshrc
# Engineering Services (ES)
#
##

# Things the user might wish to set.
export USER_PATH="~/bin"			# Extra paths.
export EDITOR=vi				# Preferred editor.
export PRINTER=lp				# Preferred printer.
export NNTPSERVER=usenet.cisco.com		# Preferred news server.

# USER CONFIG

export TERM="screen-256color"

################

##
# Should the full environment be set up even for non-interactive shells?
# Probably not but here is a variable to control it.
export FULLENV=false				# 'true' or 'false'

##
# Should all paths (even NFS, which might hang) be set up at login?
# The alias "fullpath" is available to setup your full path.  It can
# also be used to change your path by changing USER_PATH above.
export FULLPATH=true				# 'true' or 'false'

###########################################################################
# Everything above this line helps configure the environment.

# This line should not be removed.
dotdir=~/.files; [ -f $dotdir/sys_bashrc ] && . $dotdir/sys_bashrc
[ $FULLENV != "true" ] && [ -z "$PS1" ] && return

###########################################################################
# Everything below this line is run for interactive shells.
# If you wish the full environment even in non-interactive
# shells set FULLENV above to 'true'.

umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
# export HISTFILE=~/.bash_history  # history file - this setting is now externally enforced by Secops, please don't modify.
# export HISTFILESIZE=500        # history file size - this setting is now externally enforced by Secops, please don't modify.
# export HISTSIZE=128            # save last 128 commands - this setting is now externally enforced by Secops, please don't modify.
export ignoreeof=10              # disable ^D for logout (up to 10)
#set -C                           # disable redirect overwrite
#set -b                           # enable immediate job notify
#export PS1="\h:\w > "            # shell prompt format

##
# Source other rc files after this line.
[ -f ~/.bashrc_LOB ] && . ~/.bashrc_LOB
[ -f ~/.bashrc_BU ] && . ~/.bashrc_BU
[ -f ~/.bashrc_USER ] && . ~/.bashrc_USER

PATH=/pkg/sbin:/pkg/bin:$PATH:/auto/iox/bin:/auto/firex/bin:$HOME/.local/bin:~/local:~/bin:~/local/share:~/.local/bin:/bin:/sbin:/usr/bin
LD_LIBRARY_PATH=/pkg/lib:$LD_LIBRARY_PATH:$PATH

alias lb='exec bash; lboot'
alias lbm='exec bash; env ENXR_IGNORE_BASHRC=y lboot -m'

alias efr='/auto/iox/bin/xr_my_ws_efr'
alias mkdir='mkdir -pv'
alias simsetup='source /auto/vxr/vxr2_user/vxr2_2042/setup.sh'
alias resetws='rm -f tmp.diff; acme diff > tmp.diff; acme patch -reverse -input tmp.diff'
alias ctcbuild=' ljam -j16 -dax -sCFLOW_NG=/nobackup/charzha3/cflow_list -sCFLOW_NG_REC=1 -sCFLOW_VERSION=2 -sARCH=classic-32 -sPROJECT=fib/common/test/platform_jam/fib_common_ut_platform.jam'
alias build=' ljam -j16 -dax -sARCH=classic-32 -sPROJECT=fib/common/test/platform_jam/fib_common_ut_platform.jam'
alias lsbuild=' ljam -j16 -dax -sARCH=classic-32 -sPROJECT=fib/common/test/platform_jam/fib_common_ut_platform_lc_lightspeed.jam'
alias plu_ctcbuild='/router/bin/ljam -j32 -dax -sPROJECT=platforms/viking/lightspeed/rm/plu/plu.jam -sARCH=classic-64 -sCFLOW_NG=/nobackup/charzha3/cflow_list_plu -sCFLOW_VERSION=2 -sPRINT_UT_PROCESSES=y'
alias ap='acme patch -input'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH
export LD_LIBRARY_PATH

export NG
export LC_COLLATE
export LC_CTYPE
export LC_MESSAGES
export LC_MONETARY
export LC_NUMERIC
export LC_TIME
export LC_ALL
export JAM_WS_DIR=/auto/ses-master/cflow/jam_wrapper
#export JAM_WS_DIR=/auto/ses/cflow/jam_wrapper
#if [ "$PS1" != "" ]; then
#    keychain -q ~/.ssh/id_rsa
#    . ~/.ssh-agent-`uname -n`
#fi

alias config='/usr/bin/git --git-dir=/users/charzha3/.cfg/ --work-tree=/users/charzha3'
