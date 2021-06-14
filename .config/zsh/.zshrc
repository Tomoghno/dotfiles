#!/bin/sh
#
# ████████╗ ██████╗
# ╚══██╔══╝██╔════╝	Tomoghno Sen (DoodleCraft)
#    ██║   ╚█████╗ 	https://www.youtube.com/channel/UCrLuSGTUJRmI8w3aPMN8Stw
#    ██║    ╚═══██╗	https://github.com/Tomoghno
#    ██║   ██████╔╝	https://gitlab.com/Tomoghno
#    ╚═╝   ╚═════╝ 
#
# A customized .zshrc

### Powelevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

### EXPORT
export HISTORY_IGNORE="(ls|cd|pwd|exit|reboot|history|cd -|cd ..)"
export EDITOR="nvim"

### OH MY ZSH ###

# Path to your oh-my-zsh installation.
ZSH=$HOME/.config/oh-my-zsh

# Zsh Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
# Defning the plugins needs to happen before sourcing oh-my-zsh.
plugins=(zsh-syntax-highlighting
         zsh-autosuggestions
         sudo)

# Sourcing oh-my-zsh
# Your plugins will not work without this source.
source $ZSH/oh-my-zsh.sh

# automatically update without prompting
DISABLE_UPDATE_PROMPT="true"

### SET VI MODE ###
# Comment this line out to enable default emacs-like bindings
bindkey -v

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### Aliases
alias refresh="sudo dnf update --refresh && flatpak update"
alias lock='xdg-screensaver lock'
alias zconf='nvim /home/tomoghno/.config/zsh/.zshrc'
alias pkg='sudo dnf'
alias edit='nvim'
alias vim='nvim'
alias vi='nvim'

### youtube-dl alias
alias yt='youtube-dl'
alias yta-aac='youtube-dl --extract-audio --audio-format aac '
alias yta-best='youtube-dl --extract-audio --audio-format best '
alias yta-flac='youtube-dl --extract-audio --audio-format flac '
alias yta-m4a='youtube-dl --extract-audio --audio-format m4a '
alias yta-mp3='youtube-dl --extract-audio --audio-format mp3 '
alias yta-opus='youtube-dl --extract-audio --audio-format opus '
alias yta-vorbis='youtube-dl --extract-audio --audio-format vorbis '
alias yta-wav='youtube-dl --extract-audio --audio-format wav '
alias ytv-best='youtube-dl -f bestvideo+bestaudio '

### Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

### some more aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cat='bat'
alias df='df -h'

### terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### History Configuration
HISTFILE=~/.config/zsh/history
HISTFILESIZE=1000000000
HISTSIZE=1000000000
