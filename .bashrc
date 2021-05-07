#!/bin/sh
#
# ████████╗ ██████╗
# ╚══██╔══╝██╔════╝	Tomoghno Sen (DoodleCraft)
#    ██║   ╚█████╗ 	https://www.youtube.com/channel/UCrLuSGTUJRmI8w3aPMN8Stw
#    ██║    ╚═══██╗	https://github.com/Tomoghno
#    ██║   ██████╔╝	https://gitlab.com/Tomoghno
#    ╚═╝   ╚═════╝ 
#
# A customized .bashrc

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

# Aliases
alias refresh="paru -Syu && flatpak update -y"
alias lock='xdg-screensaver lock'
alias bconf='gedit /home/tomoghno/.bashrc'
alias pkg='sudo pacman'
alias pak='flatpak --user'
alias yay='paru'
alias vim='nvim'

# youtube-dl alias
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

# Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# some more aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cat='bat'
alias df='df -h'

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
