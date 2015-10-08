# Load Antigen
source ~/.antigen.zsh

# Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

# Load the oh-my-zsh's library
antigen use oh-my-zsh

#
# Antigen Bundles
#

antigen bundle git
antigen bundle docker
antigen bundle sudo
antigen bundle common-aliases
antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle autopep8
antigen bundle pip
antigen bundle history
antigen bundle tmux
# For SSH, starting ssh-agent is annoying
#
# antigen bundle ssh-agent

# Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle pyenv
antigen bundle virtualenv
antigen bundle virtualenv-prompt

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

# Theme
antigen theme seeker 

antigen apply

# Setup zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh 

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source ~/.local/bin/virtualenvwrapper.sh

alias dscreen="xrandr --output eDP1 --auto --output DP1-3 --auto  --right-of eDP1"
alias 1pass="~/.wine/drive_c/Program\ Files\ \(x86\)/1Password\ 4/ && wine 1Password.exe"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
