# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by oliver
autoload -U colors && colors

PS1="%B%{%F{29}%}%n%{%F{66}%}@%{%F{30}%}%m %{%F{67}%}%1~ %{%f%}$%b "

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# The following lines were added by compinstall
zstyle :compinstall filename '/home/oliver/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The following lines were added by oliver
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets regexp cursor root)

ZSH_HIGHLIGHT_STYLES[cursor]='bg=blue'
ZSH_HIGHLIGHT_STYLES[root]='bg=red'



# Created by `pipx` on 2024-07-03 10:50:02
export PATH="$PATH:/home/oliver/.local/bin"
