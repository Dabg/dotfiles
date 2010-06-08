##################################################
# shell variables

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# prompt
function precmd_vcs() {
    vcs_info
    RPROMPT=$'%{\e[32m%}%~'${vcs_info_msg_0_}$'%{\e[m%}'
}
PROMPT=$'%{\e[31m%}%n@%M %{\e[33m%}%* %# %{\e[m%}'

# special functions
precmd_functions=(precmd_vcs)


##################################################
# aliases

alias sl=ls
alias ls="LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx ls -G"
alias ll="ls -l"
alias la="ll -a"
alias em="emacsclient -n"

alias gi=git


##################################################
# others

# options
setopt autocd
setopt autopushd
setopt pushdignoredups

# completion
autoload -Uz compinit
compinit

zstyle ':completion:*:-command-:*' \
    fake-parameters CATALYST_DEBUG DBIC_TRACE PERL5LIB # for perl debug

# vcs
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' formats $'%{\e[35m%} [%s %r %b]%{\e[m%}'
