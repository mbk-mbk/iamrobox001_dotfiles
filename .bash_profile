export XDG_CONFIG_HOME=$HOME/.config
#export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME="qt5ct"

# aliases
alias tmux='tmux -2'
alias list-packages='pacman -Qi | egrep "^(Name|Installed)" | cut -f2 -d":" | paste - - | column -t | sort -nr -k 2 | grep MiB'
alias renpydev='python $HOME/.local/bin/renpydev.py'
alias unren='sh $HOME/.local/bin/unren.sh "$PWD"'
# source $HOME/.bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc
