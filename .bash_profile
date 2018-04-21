# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
 # We have color support; assume it's compliant with Ecma-48
 # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
 # a case would tend to support setf rather than setaf.)
 color_prompt=yes
    else
 color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias egrep='grep -E'
    alias fprep='grep -F'
fi

# some more ls aliases
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'

# python
alias python = /usr/local/opt/python/bin/python2.7

# parallel
alias p='parallel'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#export http_proxy="http://168.219.61.250:8080"
#export HTTP_PROXY="http://168.219.61.250:8080"
#export ftp_proxy="http://168.219.61.250:8080"
#
#export GIT_PROXY_COMMAD="/usr/local/bin/gitproxy.sh"
#alias synergy='synergyc --daemon 165.213.218.58'
#alias sbs='~/sbs-install/bin/sbs' 
#alias usb='sudo ifconfig usb0 192.168.129.1'
#alias emacs='emacs --fullscreen'
#alias commit='git commit -a -s -t ~/.git/temp'

#sudo sysctl -w vm.mmap_min_addr=4096 #scratchbox2 setting
#synergy #synergy client setting

#export PATH=$PATH:~/arm2011

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

PS1='\[\033[0;37m\]\[\033[01;34m\]\W\[\033[01;37m\] \$\[\033[0;37m\]\[\033[0;32m\] $(git_branch)\[\033[00m\]'

#color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

##
# Your previous /Users/zedoul/.bash_profile file was backed up as /Users/zedoul/.bash_profile.macports-saved_2014-03-15_at_11:52:36
##

# MacPorts Installer addition on 2014-03-15_at_11:52:36: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/zedoul/.bash_profile file was backed up as /Users/zedoul/.bash_profile.macports-saved_2014-04-21_at_09:05:59
##

# MacPorts Installer addition on 2014-04-21_at_09:05:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda 2.0.1 installer
export PATH="//anaconda/bin:$PATH"

# added by Anaconda2 2.4.1 installer
export PATH="/Users/zedoul/anaconda/bin:$PATH"

# added by Miniconda2 installer
export PATH="/Users/zedoul/miniconda2/bin:$PATH"
