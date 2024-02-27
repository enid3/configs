# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle :compinstall filename '/home/hd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
PROMPT='[%n] %d: '
# End of lines configured by zsh-newuser-install

# aliases 
alias vi="vim"
alias lf="lfrun"
alias tt="taskwarrior-tui"

# lfcd, lf that cd to last dir
LFCD="$XDG_CONFIG_HOME/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

# bindkey -s '^g' 'lfcd\n'  # 

# lf, icons
LF_ICONS=$(sed ~/.config/diricons \
            -e '/^[ \t]*#/d'       \
            -e '/^[ \t]*$/d'       \
            -e 's/[ \t]\+/=/g'     \
            -e 's/$/ /')
LF_ICONS=${LF_ICONS//$'\n'/:}
export LF_ICONS

# enable autojump
# source /etc/profile.d/autojump.zsh

# pipenv autocompl
# eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"

# colored output aliases & env variables
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
# alias cat='bat'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '

# tmux execution
if [ -z "$TMUX" ]; then
    exec tmux
fi

