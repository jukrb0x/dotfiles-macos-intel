# Dotfiles for *macOS (x86_64)*

> This repository is no longer maintained.

My macOS workspace setups (dotfiles), managed with `yadm`, the files are chaos, copy and paste could wreak havoc.

This repository follows the practice that symlink dotfiles from `$HOME/.config` to `$HOME`. I **do not** suggest this way to manage dotfiles for now, please check the new ARM-based macOS dotfiles repository, managed with `chezmoi`.

- Dotfiles for *ARM-based macOS*: [dotfiles-macos-arm](https://github.com/jukrb0x/dotfiles)
- Dotfiles for *WSL Ubuntu 20*: [dotfiles-wsl-ubuntu](https://github.com/jukrb0x/dotfiles-wsl-ubuntu)

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

**iTerm2** `.config/iterm2Profile.json`
- MesloGS NF (p10k patch)
- FiraCode 
- FiraMono Nerd Font
 

**JetBrains IDEs**
- JetBrains Mono ([Website](https://www.jetbrains.com/lp/mono/))

**VSCode**
```json
"editor.fontFamily": "JetBrains Mono, Menlo, Monaco, 'Courier New', monospace",
"terminal.integrated.fontFamily": "JetBrains Mono"
```

## Terminal
- iTerm2
- Zsh (oh-my-zsh)
    - `powerlevel10k` theme with useful plugins
- Tmux
- NeoVim (LunarVim)

