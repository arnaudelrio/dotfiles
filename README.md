# dotfiles
My dotfiles for the Al4st0r Arch Linux computer using Hyprland as a Desktop Environment.

These dotfiles have been tailor specifically to my needs and may cause trouble if installed on other machines. Despite this, the idea of having dotfiles is to easily configure a new computer if I ever change the one I have currently, so I'm trying to keep it flexible and simple.

Below, I'm going to present a list of apps and screenshots for you to see whether or not this configuration is the one you're looking for or not.

Note that I'm usually inclined for console-apps and/or vim related key-bindings (in fact, I usually use extensions or plugins that allow me to use these same key-bindings in other apps such as Zed or Obsidian).

## Most important apps
* Package manager: [pacman](https://archlinux.org/pacman/) with [yay](https://github.com/Jguer/yay)
* Terminal: [kitty](https://sw.kovidgoyal.net/kitty/)
* Fetch: [fastfetch](https://github.com/fastfetch-cli/fastfetch)
* Screenshotting: [hyprshot](https://github.com/Gustash/hyprshot)
* Session manager: [wlogout](https://github.com/ArtsyMacaw/wlogout)
* Resource monitor: [btop](https://github.com/aristocratos/btop)
* Login Manager: Tuigreetd (greetd)
* App launcher: [rofi](https://davatorium.github.io/rofi/)
* Status Bar: [eww](https://elkowar.github.io/eww/)
* Widgets and dashboard: [eww](https://elkowar.github.io/eww/)
* Notification daemon: [dunst](https://dunst-project.org/)
* Main file editor: [neovim](https://neovim.io/) (I do most note-taking here too lately)
* IDE: [Zed](https://zed.dev) (sometimes, when I need to use the copilot chat or multibuffer)
* Browser: [zen-browser](https://zen-browser.app/)
* Note-taking: [Obsidian](https://obsidian.md) (The dotfiles are in another repository, which is private, for now)
* PDF Reader: [zathura](https://pwmt.org/projects/zathura/) (with mupdf)
* File manager: [Vifm](https://vifm.info) (and Thunar if GUI is needed)
* Video player: [MPV](https://mpv.io/)
* Art: [Krita](https://krita.org/en/)
* Image editing: [GIMP](https://www.gimp.org/)
* Music reproduction: [YouTube Music](https://th-ch.github.io/youtube-music/)
* Music editing: [MuseScore 4](https://musescore.org/)
* Background: [hyprpaper](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/)
* Audio manager: [pacmixer](https://github.com/KenjiTakahashi/pacmixer)
* Math software system: [sage](https://www.sagemath.org/) (with jupyterlab)
* 3D Software: [Blender](https://www.blender.org/)
* Password manager: [1Password](https://1password.com/)
* LaTeX: [pdflatex](https://www.latex-project.org/) (neovim for editing and MikTex as a package manager)
* Messenger: [discord](https://discord.com/) and [telegram](https://telegram.org/)
* Matrix effect: [cmatrix](https://github.com/abishekvashok/cmatrix)

## Installation
TODO: Make install guide and/or script.

For now, most of these folders are symlinks to the corresponding folder in the `~/.config` directory.

The `bashrc` file is a symlink to the `~/.bashrc` file, and the `vimrc` file is a symlink to the `~/.vimrc` file.

## Screenshots
TODO (might take a while)

## Credits
I obviously don't take credit for any of the programs (I might take a look at contributing to the open-source projects). The configuration is mostly mine, but I've had a look at a lot of other people's dotfiles for inspiration. I might publish a list of the most interesting ones sometime. Therefore, I welcome anyone who wants to take inspiration from my dotfiles, because I know first hand that it might help other people to make their own dotfiles.
