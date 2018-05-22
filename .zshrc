source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

source ~/.zsh/powerlevel9k.conf.zsh # Powerlevel9k Config     

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Personal Preferences
antigen bundle common-aliases
antigen bundle docker
antigen bundle git-extras
antigen bundle git-flow
antigen bundle github
antigen bundle lol
antigen bundle python
antigen bundle repo
antigen bundle sudo
antigen bundle vagrant
antigen bundle web-search

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Set the used theme
antigen theme bhilburn/powerlevel9k powerlevel9k #Depends on ryanoasis/nerd-fonts
#antigen theme juanghurtado

antigen apply

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

alias git=hub

export EDITOR="/usr/bin/vim"

unalias rm
