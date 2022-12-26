## Repository Name

dotfiles

## Repository Description

A collection of dotfiles and installer scripts to install and then configure applications to **my** personal prefrence/s

## Repository Structure

*dotfiles.md*
- A markdown file contain the descriptions for the current repository.

*i3*
- Contains `config`, a file used for the configuration of i3-wm.

*i3status*
- Contains `config`, a file used for the configuration of i3status, the status bar at the bottom of the display when using i3-wm.

*nvim*
- Contains `init.vim`, a file used for the configuration of neovim, the CLI text editor based on vim.

*zsh*
- Contains `.zshrc`, a file used for the configuration of z shell, an extended version of the bourne again shell. In my case this is paired with oh my zsh, a framwork to assist with extension and theme management, as well as many other aspects of zsh.

*install*
- Contains `install.sh` and `PKG.list`, files used for the installation and configuration of packages to be installed on the system. `install.sh` is a shell script presents options to the user when executed, these options can install (WIP: then auto configure the app with *my* prefrences, aka dotfiles).
- Uses (git and) pacman to get and install pkg.

## Dev Notes

- `install.sh` does not have git clone and makepkg function. Need to find a way to get the package directory name, and then cd into it to makepkg -sri. Thus is why it is commented out.
- `install.sh` does not yet have a way of cloning/using the currently listed dotfile configurations.
- `install.sh` has yet to have an option to do everything all at one (this includes pacman -S, AUR clone, dotfiles, other config/s).
