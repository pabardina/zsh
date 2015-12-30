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
# antigen bundle docker
# antigen bundle sudo
antigen bundle common-aliases
# antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle autopep8
# antigen bundle pip
# antigen bundle history
# antigen bundle tmux
# For SSH, starting ssh-agent is annoying
#
antigen bundle ssh-agent

# Python Plugins
# antigen bundle pip
# antigen bundle python
# antigen bundle pyenv
antigen bundle virtualenv
antigen bundle virtualenv-prompt


# Theme
antigen theme seeker 

antigen apply

# Setup zsh-autosuggestions
# source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh 

# Enable autosuggestions automatically
# zle-line-init() {
#     zle autosuggest-start
# }

zle -N zle-line-init

# bind UP and DOWN arrow keys
# zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down


# bind k and j for VI mode
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down

export WORKON_HOME=~/.virtualenvs
source ~/.local/bin/virtualenvwrapper.sh

alias dscreen="xrandr --output eDP1 --auto --output DP1-3 --auto --primary --right-of eDP1;feh --bg-scale ~/Documents/wallpaper.jpg"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias lock="pkill -f keepass; i3lock"
alias tmux="tmux -2"
alias open="xdg-open"
alias sound="pavucontrol &"
# alias ag="ack-grep"
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh  ]]; then
  source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi



PATH="/home/pab/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/pab/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/pab/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/pab/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/pab/perl5"; export PERL_MM_OPT;
