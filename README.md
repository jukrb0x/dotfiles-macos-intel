# dotfiles
My personal dotfiles, managed with `yadm`.

Principles:
- Try not to add system-related files into this project, keep pure to application itself.
- Exclude any secret file such as private keys and personal information.
- Exclude Cache file
- Exclude Git repository
- Git submodule is considered, though I do not use any submodule currently.

## .config
Some application config files are situated in this directory.

My old-school way to manage dotfiles, put dotfiles inside `.config/` and then create softlink in home folder to its original.

I stick to this way for some files such as `.zshrc`, even it is unnecessary with `yadm`.

## NeoVim
I am currently using the preset [LunarVim](https://github.com/ChristianChiarulli/LunarVim/) for Nvim.

## Tmux
Glad to use the versatile config [oh-my-tmux](https://github.com/gpakosz/.tmux).
