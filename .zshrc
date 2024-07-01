fastfetch
#Add git ssh to keychain (ssh-agent)
eval $(keychain --eval id_ed25519 github)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM 


# for the fuck plugin
eval $(thefuck --alias)

alias ll='ls -al --color=auto'
alias connectspk='bluetoothctl connect F8:DF:15:D4:98:F0'
alias connecthp='bluetoothctl connect 38:18:4C:5A:8B:A6'
alias monattach='xrandr --output HDMI-1 --mode 1920x1080 --primary --right-of eDP-1 --output eDP-1 --mode 1368x768;/home/darren/.config/bspwm/bspwmrc;'
alias mondetach='xrandr --output eDP-1 --mode 1920x1080 --primary --output HDMI-1 --off;/home/darren/.config/bspwm/bspwmrc;'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
