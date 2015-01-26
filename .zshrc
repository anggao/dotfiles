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
