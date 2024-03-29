# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
SRC=~/devmac/src
GOPATH=$HOME/go
GO111MODULE="on"
PORTERPATH=$HOME/.porter
NODEPATH=/usr/local/lib/nodejs/node-v10.16.1-linux-x64

PATH="$HOME/bin:$HOME/.local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin:$NODEPATH/bin:$PORTERPATH"

GPG_TTY=$(tty)
export GPG_TTY
