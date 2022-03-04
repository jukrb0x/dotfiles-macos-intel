# Dotfiles for *macOS*

> Sister repository for *WSL Ubuntu 20*: [dotfiles-wsl-ubuntu](https://github.com/jukrb0x/dotfiles-wsl-ubuntu)

My macOS workspace setups (dotfiles).

## What is dotfiles?

Before you do anything with this repository, I suggest you take a look on this website about [Dotfiles](https://dotfiles.github.io/)

I use `yadm` to manage all my dotfiles, you may find other tools to manage and symlink them.

```
❯ neofetch
                    'c.          jukrb0x@Workstation.local
                 ,xNMM.          -----------------------------
               .OMMMMo           OS: macOS 11.4 20F71 x86_64
               OMMM0,            Host: MacBookPro14,3
     .;loddo:' loolloddol;.      Kernel: 20.5.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: X day, X hours, X mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 175 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: zsh 5.8
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: X
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Dark)
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: tmux
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   CPU: Intel i7-7700HQ (8) @ 2.80GHz
    kMMMMMMMMMMMMMMMMMMMMMMd     GPU: Intel HD Graphics 630, Radeon Pro 555
     ;KMMMMMMMWXXWMMMMMMMk.      Memory: XMiB / 16384MiB
       .cooc,.    .,coo:.

```

## Fonts
I am comfortable with these fonts.

**iTerm2**
- MesloGS NF (p10k patch)
- FiraCode 
- FiraMono Nerd Font

> More details at `.config/iterm2Profile.json`

**JetBrains IDEs**
- JetBrains Mono ([Website](https://www.jetbrains.com/lp/mono/))

**VSCode**
```json
"editor.fontFamily": "JetBrains Mono, Menlo, Monaco, 'Courier New', monospace"
"terminal.integrated.fontFamily": "JetBrains Mono"
```

## Terminal Setup
- iTerm2
- Zsh (oh-my-zsh)
    - powerlevel10k theme with useful plugins
- Tmux
- NeoVim (LunarVim)


# Tips
> todo
- A good practice: put dotfiles under a special directory and symlink them to `$HOME`.
- [ ] Auto script for installing fonts
