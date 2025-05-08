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
    - sxiv
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
- Obviously, you need all the programs I just listed in the previous section, but if you don't want to use any of them, you can delete them from the `home` directory.
- It's recommended to use [GNU Stow](https://www.gnu.org/software/stow) to link these dotfiles using the boostrap script, but you're free to use the method you want to use. Otherwise, download them yourself and link their paths.
- And, of course, you will need [git](https://git-scm.com), to clone this repository.

## Usage
```
./dotlink
```

## Notes
Some of the programs are configured to use the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest), so these files are moved from their classical location in the `$HOME` directory to the location on the right side:
- ~/.gnupg -> ~/.local/share/gnupg
- ~/.xinitrc -> ~/.config/X11/xinitrc
- ~/.gitconfig -> ~/.config/git/config
- ~/.Xresources -> ~/.config/X11/Xresources
