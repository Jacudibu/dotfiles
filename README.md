# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have **Git** and **GNU Stow** installed on your system:

```
pacman -S git stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/jacudibu/dotfiles.git .dotfiles
$ cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

## Adding more dotfiles

Imitate the file structure you want to track:

```
cd ~/.dotfiles
mkdir .config/niri
touch .config/niri/config.kdl
```

then tell stow to copy over the original file(s) and create the symlinks:

```
stow --adopt .
```

Another option would be do copy the file over, delete the orignal file, and then just run `stow .`.
