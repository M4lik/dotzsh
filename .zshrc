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
antigen bundle python
antigen bundle repo
antigen bundle sudo
antigen bundle vagrant
antigen bundle web-search
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-autosuggestions

# NVM - Uncomment to enable/install nvm
#export NVM_LAZY_LOAD=true
#antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Set the used theme
#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme agnoster/agnoster-zsh-theme
antigen theme juanghurtado


antigen apply


# Tilix VTE fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#alias git=hub # Uncomment if hub is installed


# Env vars
export EDITOR="/usr/bin/vim"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GOPATH="$HOME/go"
PATH=$PATH:${GOPATH//://bin:}/bin

# alias-tips config
export ZSH_PLUGINS_ALIAS_TIPS_FORCE=0       # Force usage of aliases
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1      # Expand aliases
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "    # Alias tip text
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_ ll vi"    # Alias tip exclude list
export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=0      # Show command behind alias

# agnoster-zsh-theme config
export DEFAULT_USER=$USER

unalias rm


~/.zsh/motd.sh
