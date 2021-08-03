# dotfiles
My personal dotfiles, managed with [`yadm`](https://yadm.io/)

Principles:
- Try not to add system-related files into this project, keep pure to application itself.

    > There are occasions when this cannot be avoided, for example, absolute pathname includes username.
- Exclude any secret file such as private keys and personal information.
- Exclude Cache file
- Exclude Git repository
- Git submodule is considered, though I do not use any submodule currently.

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

## .config
Some application config files are situated in this directory.

My old-school way to manage dotfiles, put dotfiles inside `.config/` and then create softlink in home folder to its original.

I stick to this way for some files such as `.zshrc`, even it is unnecessary with `yadm`.

## NeoVim
I am currently using the preset [LunarVim](https://github.com/ChristianChiarulli/LunarVim/) for Nvim.

My plugins: (in `.config/nvim/lv-config.lua`)
```
-- Additional Plugins
O.user_plugins = {
       {'iamcco/markdown-preview.nvim'}, 
       {'Iron-E/nvim-libmodal'} ,
       {'Iron-E/nvim-typora'},
       {'plasticboy/vim-markdown'},
       {'wakatime/vim-wakatime'}
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
}
```
## Tmux
Glad to use the versatile config [oh-my-tmux](https://github.com/gpakosz/.tmux).

## Deprecated files
Some applications that I do not use for a while, the dotfiles of them are kept as backup, such files like `.hyper.js`.

## Fonts
For iTerm2:
- FiraCode-Retina 14 (normal)
- FiraMonoNerdFontComplete-Regular 14 (non-ascii)

More details at `.config/iterm2.json`
