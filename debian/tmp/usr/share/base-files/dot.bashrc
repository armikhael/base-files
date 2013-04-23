# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    export LS_OPTIONS='--color=auto'
    eval "`dircolors -b`"
    alias ls='ls $LS_OPTIONS'
    alias ll='ls $LS_OPTIONS -lh'
    alias l='ls $LS_OPTIONS -CF'
    alias grep='grep $LS_OPTIONS'
fi

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

alias useradd='useradd -G lp,cdrom,floppy,audio,dip,dialout,video,plugdev,netdev,bluetooth,lpadmin,powerdev,scanner,users,fuse'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

