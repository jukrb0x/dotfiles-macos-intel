# dotfiles
My personal dotfiles, managed with [`yadm`](https://yadm.io/)

Principles:
- Try not to add system-related files into this project, keep pure to application itself.

    > There are occasions when this cannot be avoided, for example, absolute pathname includes username.
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

## Deprecated files
Some applications that I do not use for a while, the dotfiles of them are kept as backup, such files like `.hyper.js`.
