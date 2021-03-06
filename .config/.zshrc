# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# homebrew ruby gem support
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/local/lib/ruby/gems/3.1.0/bin:$PATH

# flutter sdk
export PATH="$PATH:${HOME}/flutter/bin"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# >>> Homebrew shell completions >>>
# !! Homebrew shell completions must be done before call oh-my-zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
# <<< Homebrew shell completions <<< 

# >>> homebrew/command-not-found handler init >>>
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi
# <<< homebrew/command-not-found handler init <<<

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Hide Username and Hostname
DEFAULT_USER=`id -un`

# Fix no mathces found in zsh
# so I do not have to replace '?' with '\?'
setopt no_nomatch

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#  -- Remote defaults to vim
#  -- Local defaults to lvim
if [[ -n $SSH_CONNECTION ]]; then
  export VISUAL='vim'
  export EDITOR='vim'
else
  export VISUAL='lvim'
  export EDITOR='lvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh
# export http_proxy=http://127.0.0.1:7878
# export https_proxy=$http_proxy
# all proxy on-off alias

# ---- Aliases ----
alias nvim=lvim
alias proxy='export all_proxy=socks5://127.0.0.1:8235'
alias unproxy='unset all_proxy'
alias nb='jupyter-notebook'
alias caferacer='${HOME}/caferacer_ip_refresh.sh'
alias ra='ranger'
alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias mongodb-start='brew services start mongodb-community@4.4'
alias mongodb-stop='brew services stop mongodb-community@4.4'
# >>> alias to athityakumar/colorls >>>
alias l='colorls -lA --sd' # omz default l=ls -alh
alias ll='colorls -l --sd' # omz default ll=ls -lh
alias ls='colorls'
# <<< alias to athityakumar/colorls <<<

# ---- Applications ----

# colorls auto completion
source $(dirname $(gem which colorls))/tab_complete.sh

# >>> pyenv init >>>
# !! pyenv should be initialized in front of most applications
#    to provide python environment shims
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# <<< pyenv init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('${HOME}/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "${HOME}/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "${HOME}/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="${HOME}/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# workaround for fix Hyper first line precent sign
# unsetopt PROMPT_SP
# export PATH="/usr/local/sbin:$PATH"

# Homebrew mirror
# Bintary end of services
export HOMEBREW_BOTTLE_DOMAIN=""

# !! deprecated !!
# Java
# --> jdk 1.8 (system)
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_271.jdk/Contents/Home
# --> jdk11 (corretto, downloaded with intellij)
# export JAVA_HOME=${HOME}/Library/Java/JavaVirtualMachines/corretto-11.0.12/Contents/Home
# --> jdk 11 (temurin downloaded with intellij)
# export JAVA_HOME=${HOME}/Library/Java/JavaVirtualMachines/temurin-11.0.12/Contents/Home

# Android Debug Bridge
export ANDROID_HOME=${HOME}/Library/Android/sdk
export ANDROID_SDK_ROOT=${HOME}/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_SDK_ROOT/tools; PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# iTerm2 shell integration for zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# GPG workaround
export GPG_TTY=$(tty)

# fix slow git tab completion
__git_files () { 
    _wanted files expl 'local files' _files     
}

# fix: python locale encoding 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
