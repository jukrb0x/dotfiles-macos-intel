# dotfiles (WIP)
Workspace setup, My personal dotfiles, powered by [`yadm`](https://yadm.io/)

Dotfiles are very personal things, make sure you read the document before actually using them. Personally I use this repository to sync my dotfiles, however this repository aims to assist you with creating your own Dotfiles. I would try to document all magics that I've been using. The dotfiles are managed by `yadm`, which is git-like tool to manage and sync dotfiles. However, you can choose other dotfiles manager such as [`mackup`](https://github.com/lra/mackup). 

Principles:
- Try not to add system-related files into this project, keep pure to application itself.

    > There are occasions when this cannot be avoided, for example, absolute pathname includes username.
- Exclude any secret file such as private keys and personal information.
- Exclude unnecessary files (such as cache)
- Exclude Git repository
- Git submodule is considered, though I do not use any submodule currently

    > Use submodule soon!
- Softlink-free, `yadm` will manage dotfiles under `$HOME` directory, softlink is deprecated.

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

For iTerm2:
- FiraCode Medium 17
- FiraMono Nerd Font Regular 17 (non-ascii)

More details at `.config/iterm2.json`

For JetBrains IDEs:
- JetBrains Mono ([Website](https://www.jetbrains.com/lp/mono/))

For VSCode:
- `"editor.fontFamily": "JetBrains Mono, Menlo, Monaco, 'Courier New', monospace"`
- `"terminal.integrated.fontFamily": "JetBrains Mono"`

## Terminal Arsenal
- iTerm2
- Zsh (oh-my-zsh)
- StarShip prompt
- Tmux
- NeoVim (LunarVim)
- Pyenv (manage python versions on machine)
- Pipenv (manage python environment for projects)

### Tmux
Glad to use the versatile config [oh-my-tmux](https://github.com/gpakosz/.tmux).

Plugins:
- [xamut/tmux-network-bandwidth](https://github.com/xamut/tmux-network-bandwidth)

### NeoVim
I am currently using the preset [LunarVim](https://github.com/ChristianChiarulli/LunarVim/) for Nvim.  Learning Vim? See [this repo](https://github.com/mhinz/vim-galore).


<details>
<summary>Plugins: (see `.config/lvim/lv-config.lua`)</summary>

```lua
-- Additional Plugins
lvim.plugins = {
    -- GitHub
    { "github/copilot.vim"},
    -- Themes
    { "folke/tokyonight.nvim" },
    { "Pocco81/Catppuccino.nvim" },
    { "NTBBloodbath/doom-one.nvim" },
    { "abzcoding/zephyr-nvim" },
    -- Plugins
    { "mfussenegger/nvim-jdtls", ft = "java" },
    { "iamcco/markdown-preview.nvim" },
    { "Iron-E/nvim-libmodal" },
    { "Iron-E/nvim-typora" },
    { "plasticboy/vim-markdown" },
    { "wakatime/vim-wakatime" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        setup = function ()
            require("user.indent_blankline").setup()
        end,
        event = "BufRead"
    },
    { "norcalli/nvim-colorizer.lua" },
    { "phaazon/hop.nvim" },
    { "ybian/smartim" }
}
```

</details>

## `.config` 
Some application configs are situated in this directory.

My old-school way to manage dotfiles, put dotfiles inside `.config/` and then create softlink in home folder to its original.

I (*currently*) stick to this way for some files such as `.zshrc`, even it is unnecessary with `yadm`. However, it's a bit annoying to add files outside `.config/` one by one since `$HOME` is not a real git directory.

## Deprecated files
Some applications that I do not use for a while, the dotfiles of them are kept as backup, such files like `.hyper.js`.

Files will be removed soon:
- hyper related files

## TODOs
- [ ] Tutorial writing: my setup of terminal workspace
- [ ] Auto script for installing softwares through Homebrew
- [ ] Auto script for Installing fonts
