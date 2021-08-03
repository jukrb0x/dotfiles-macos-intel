# dot-config
The directory exits in `~/.config`

This directory and its subdirectories is no longer sync with some single git repo, now `yadm` takes in charge of dotfiles management. Hence all `.git` files will be removed, no more submodules (maybe).

## .zshrc
`yadm` helps with managing dotfiles so I don’t need link `~/.somefile` to `~/.config/.somefile`

But I will stick to my preference that linking `~/.zshrc` to `~/.config/.zshrc`

It is hard to ensure all personal information is excluded from `.zshrc` such as absolute pathname includes username.

## Tmux
[Oh-my-tmux](https://github.com/gpakosz/.tmux) is ~~installed as submodule into this project and~~ kept updates with original repo.

## LunarVim
Installation and configuration refer to [LunarVim](https://github.com/ChristianChiarulli/LunarVim/)

It should be updated manually.

### Plugins

- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)


## iTerm2 and Fonts
`iterm2.json` stores the settings profile for iTerm2.

Fonts that I usually use for terminal and IDE. (Nerd fonts)

Look up `iterm2.json` for more information.
