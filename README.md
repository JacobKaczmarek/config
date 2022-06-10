# Instalation

Download the repo
```
git clone --bare git@github.com:JacobKaczmarek/config.git $HOME/.cfg
```

Add an alias for working with the repo
```
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Run this git commands
```
config config --local status.showUntrackedFiles no
config checkout
```

# Vim config

## Installed plugins
 - packer.nvim
 - vim-tmux-navigator
 - nvim-lspconfig
 - nvim-cmp
 - LuaSnip
 - nvim-treesitter

### TODO
 - telescope
 - lualine
 - comment.nvim

## Keybindings
TODO
