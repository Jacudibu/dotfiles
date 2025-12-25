This directory contains the main system configuration for my machine.

## Requirements

Ensure you have **Git** and **GNU Stow** installed on your system:

```
pacman -S git stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com/jacudibu/dotfiles.git
cd .dotfiles/home
```

then use GNU stow to create symlinks:

```
stow .
```

## Adding more dotfiles

Imitate the file structure you want to track, e.g. the config file for [Niri](https://github.com/YaLTeR/niri):

```
cd ~/dotfiles/home
mkdir dot-config/niri
touch dot-config/niri/config.kdl
```

then tell stow to copy over the original file(s) and create the symlinks:

```
stow --adopt .
```

Another option would be to copy the file over, delete (or backup) the orignal file, and then just run `stow .`.
