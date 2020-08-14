# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

#
# Defines environment variables.
#
# Authors:
#   Ang Gao <anggao@me.com>
#

# Golang
export GOROOT=$HOME/go
export GOPATH=$HOME/goprojects
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin


# Source files
#
source ~/.alias
# secret alias 
source ~/.devalias
# secret env 
source ~/.devenv
