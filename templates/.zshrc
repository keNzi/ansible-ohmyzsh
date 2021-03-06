# Path to your oh-my-zsh installation.
export ZSH={{ user_home_path }}/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
ZSH_THEME="duellj"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting django aws celery fabric python vagrant)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
source $ZSH/oh-my-zsh.sh

# git aliases
alias s='git status'
alias gd='git diff'
alias gpush='git push'
alias glog='git log'
alias gpull='git pull'
alias co='git checkout'

# usefull functions
function delpyc {
    find . -iname '*.pyc' -delete
}

function c {
    git commit -am ${@}
}

function m {
    git merge ${1}
}

# usefull aliases
alias vt='cd {{ build_path }}/{{ django_app_user }}; source {{ virtualenv_path }}/bin/activate'
