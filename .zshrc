# Save history
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1800
setopt inc_appendhistory share_history extended_history 

#enables changing directory without using 'cd'
setopt autocd 

#whenever change directory, puts it on directory stack so 'popd' can be used
setopt autopushd 

# extendedglob gives ability to do 'ls -l *(.)'
setopt extendedglob 

#Report the status of background jobs immediately, rather than waiting until just before printing a prompt
setopt notify

#no beep, 
unsetopt beep 

#If a pattern for filename generation has no matches, print an error,
#instead of leaving it unchanged in the argument list. This also 
#applies to file expansion of an initial ~ or =.
unsetopt nomatch

#gives emacs style of line editing at the prompt
bindkey -e

#set default editor to emacs
export EDITOR=emacs

## Load the completion module.
zstyle :compinstall filename '/users/danny/.zshrc'
autoload -U compinit
compinit

#Colored prompt
autoload -U colors
colors
setopt prompt_subst
PROMPT='%{${fg[yellow]}%}%D{%a%b%d-%H:%M} %{${fg[red]}%}%n@%m %{${fg[blue]}%}%/ %{${fg[black]}%}
%# '

