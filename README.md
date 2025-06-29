# Leliel's Dotfiles
These are my personal dotfiles. Feel free to use them.

## What does it have?
- Configuration files and environment variables for:
    - git
    - gtk
    - nnn
    - mpv
    - X11
    - bash
    - nvim
    - nsxiv
    - dunst
    - picom
    - sxhkd
    - yt-dlp
    - zathura
    - mimeapps
    - fastfetch
- A bunch of shell scripts
- An emoji file

## Requirements
- Obviously, you need all the programs listed in the previous section, but if you don't want to use any of them, you can delete them from the `home` directory.
- A POSIX compliant shell
- And, of course, you will need [git](https://git-scm.com), to clone this repository.

## Usage
```
./install
```

## Notes
Some of the programs are configured to use the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest), so these files are moved from their classical location in the `$HOME` directory to the location on the right side:
- ~/.gnupg -> ~/.local/share/gnupg
- ~/.xinitrc -> ~/.config/X11/xinitrc
- ~/.gitconfig -> ~/.config/git/config
- ~/.Xresources -> ~/.config/X11/Xresources
