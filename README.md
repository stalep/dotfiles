# dotfiles

This repo contains the latest version of my dotfiles.
The install instructions are fairly crude, use on your own risk.
The colorscheme is Gruvbox.

My work environment is:

| purpose | tool |
|---------|------|
| editor | Neovim |
| terminal multiplexer | Tmux |
| shell | Fish |
| terminal application | Alacritty |
| WM | Hyprland |

# Install

Common terminal tools and utils:

`dnf install fish eza alacritty tmux neovim jetbrains-mono-fonts-all fzf chromium jetbrainsmono-nerd-fonts lazygit bat`

Manually install lazydocker:

`go install github.com/jesseduffield/lazydocker@latest`

## Fish

We need to install some extra plugins to make fish even better, first install fisher
```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```
Then install plugins:
```
fisher install danhper/fish-ssh-agent
fisher install reitzig/sdkman-for-fish@v2.1.0
patrickf1/fzf.fish
```
This should enable sdkman, ssh-agent and fzf in the terminal. Eg, use Ctrl-Alt-f to search for files.

The fzf plugin defaults to use exa, lets set it up to use eza:
`set fzf_preview_dir_cmd eza --all --color=always`

## Hyprland

Most of this config is copied from the Omarchy project.
The fedora base repo does not contain all the programs needed for Hyprland, luckily there is a custom repo that adds everything we need.

`dnf copr enable solopasha/hyprland` 

```
dnf install hyprland hyprutils hyprcursor waybar wofi hyprpaper fcitx5 hyprpolkitagent wl-clipboard cliphist mako pamixer hyprland-contrib hyprland-plugins hyprshot hypridle hyprlock btop fontawesome-6-brands-fonts fontawesome-6-free-fonts fontawesome-fonts-web fontawesome4-fonts fontawesome4-fonts-web pavucontrol swaybg
```


Manually install 1Password if you want:

```
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc  
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password
``` 

# Hyprland

This hyprland setup use waybar, mako, wofi, swaybg, hypridle, hyprlock, ++

Have a look at the config files under `.config/hypr/*`, `.config/waybar/*` etc for a better understanding regarding how it's configured and the applications needed.

To enable Hyprland, simply select it before you log in from the list of WM's.

`swaybg` is currently pointing to a file under `.~/backgrounds/` please have a look in `.config/hypr/autostart.conf` to point it to the background picture you want.



