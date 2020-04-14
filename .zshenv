#
# Defines environment variables.
#
# Authors:
#   Ang Gao <anggao@me.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export COLORTERM="truecolor"

# Golang
export GOROOT=$HOME/go
export GOPATH=$HOME/goprojects
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin

source ~/.alias

# secret alias 
source ~/.devalias

# secret evn 
source ~/.devenv

