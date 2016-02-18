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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Disable CapsLock
xmodmap -e "keycode 66 = Shift_L NoSymbol Shift_L"
# Remap Insert to Delete
xmodmap -e "keysym Insert = Delete"

# Nix
if [ -e /home/uralbash/.nix-profile/etc/profile.d/nix.sh ]; then
    . /home/uralbash/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer
NIXPKGS_CONFIG=$HOME/.nixpkgs/config.nix

# Fortune
~/.bash-org-ru/generate.sh > /dev/null
