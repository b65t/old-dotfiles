# Created by newuser for 5.9
# islam (imi) zsh config file!

# user

export USER_COLOR="#81a2be"
PROMPT="╭─ %F{$USER_COLOR}%n/%m :%f
╰─ %~ %F{WHITE} "

# plugins

source "/home/islam/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# startup

neofetch

# shell

export SHELL=/bin/zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
