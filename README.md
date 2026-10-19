# dotfiles

Configs for Neovim, Ghostty and tmux, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```sh
git clone https://github.com/mouizahmed/dotfiles ~/dotfiles
cd ~/dotfiles
stow nvim ghostty tmux
```

Each folder mirrors the path under `~`, so `stow nvim` links `~/.config/nvim` to `nvim/.config/nvim`.
