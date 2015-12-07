#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Ang Gao <anggao@me.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true
# # cache pip-installed packages to avoid re-downloading
# export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#gpip(){
#   PIP_REQUIRE_VIRTUALENV="" pip "$@"
#}
#

# Load virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
export PROJECT_HOME=~/git_repos
export WORKON_HOME=~/Virtualenvs

# Golang
export GOPATH=/Users/anggao/Go/Development
export PATH=$PATH:$GOPATH/bin

# Andriod
export PATH=$PATH:~/Andriod/platform-tools

# ANM
export RSTOP=~/TR/rio/redshift
export AZKABAN_WEB_HOME=~/azkaban/azkaban-web-server-2.6.0-SNAPSHOT
export AZKABAN_EXEC_HOME=~/azkaban/azkaban-exec-server-2.6.0-SNAPSHOT
export PATH=$PATH:$RSTOP/bin/
export PATH=$PATH:$RSTOP/azkaban/projects/common/
export AZKABAN_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_76.jdk/Contents/Home
