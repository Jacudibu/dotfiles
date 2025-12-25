This directory contains the main system configuration for my machine.

## Repository Structure
- `/home` contains config files found within the home directory. It can easily be restored via GNU Stow.
- `/root` contains config files found anywhere outside of the home directory. Restoration should happen manually if needed.
- `/scripts` contains scripts which may be invoked via keybindings.

## Installating dotfiles via GNU stow

`cd` into `~/dotfiles/home` and use `stow` to create symlinks:

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
