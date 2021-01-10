# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#
# Aliases
alias refresh="sudo pacman -Syu -y && flatpak update -y"
alias lock='xdg-screensaver lock'
alias zconf='gedit /home/tomoghno/.zshrc'
alias pkg='sudo pacman'

# some more ls aliases
alias ll='exa -alF --group-directories-first'
alias la='exa -a --group-directories-first'
alias l='exa -F --group-directories-first'
alias ls='exa --color=auto --group-directories-first'

#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

source /home/tomoghno/.local/share/powerlevel10k/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/tomoghno/.local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
