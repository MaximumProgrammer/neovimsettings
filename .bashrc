# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

source /opt/rh/rh-git218/enable
source ~/Repos/inspire/env.sh Debug Ninja gcc
export GITLAB_PRIVATE_TOKEN=glpat-X6JFTP1KRxrgd5RfyDfV
. /opt/rh/llvm-toolset-11.0/enable

export https_proxy=http://fabaproxylnz.fabagl.fabasoft.com:8080
export http_proxy=http://fabaproxylnz.fabagl.fabasoft.com:8080
export no_proxy="127.0.0.1, localhost, nexus.mindbreeze.fabagl.fabasoft.com, mindsource2.mindbreeze.fabagl.fabasoft.com, artifactory.mindbreeze.fabagl.fabasoft.com"

export PIP_TRUSTED_HOST="nexus.mindbreeze.fabagl.fabasoft.com"
export PIP_INDEX_URL="http://nexus.mindbreeze.fabagl.fabasoft.com:8081/repository/pypi/simple"
alias COMPILE_D='./build.sh Debug Ninja gcc'
alias COMPILE_R='./build.sh Release Ninja gcc'

export PS1="\e[0;32m[\u@\h \W]\$ \e[m "

git config --global core.autocrlf false

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

function build_cscope_db_func() {
    find . -name '*.c' -o -name '*.h'  > cscope.files
    cscope -Rbkq cscope.files
}
alias csbuild=build_cscope_db_func

alias gdc='git diff --color=always | less -RN'

export LATEST_JAVA_HOME=/usr/java/latest

export JAVA_HOME="${LATEST_JAVA_HOME}"

export GIT_EDITOR="vim -u ~/.my-custom-vimrc"
