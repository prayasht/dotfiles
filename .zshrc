# zshrc
# Prayash Thapa (hi@prayash.io)

# -----------------------------------------------------------
## Init

# nvm
# export NVM_LAZY_LOAD=true

# plugins+=(zsh-nvm)

# zsh plugins
plugins+=(zsh-autosuggestions zsh-syntax-highlighting z node osx asdf)

# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Pure prompt by https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# DISABLE THEME FOR PURE PROMPT!
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="effulgence"
ZSH_THEME=""

# -----------------------------------------------------------
## Paths

# Default
export PATH="$HOME/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# MySQL
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Ruby
# export PATH="$PATH:$HOME/.rbenv/shims"

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Node
export PATH="$PATH:$HOME/.npm-packages/bin"

# Some custom binaries I use are stored here
export PATH="$HOME/bin:$PATH"

# Anaconda
# export PATH="$HOME/anaconda/envs/python2/bin:$PATH"

# Python
# export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"

# Rust
# export PATH="$HOME/.cargo/bin:$PATH"

# Android
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Spark
# export SPARK_HOME=/Users/effulgence/spark
# export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
# export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH

# export ANACONDA_ROOT="~/anaconda"

# Fastlane
# export PATH="$HOME/.fastlane/bin:$PATH"

# -----------------------------------------------------------
## Aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Source and edit .zshrc
alias serc='source ~/.zshrc'

# nvm
alias n6='nvm use 6'
alias n8='nvm use 8'
alias nu='nvm use'

# NPM
alias ni='npm install'
alias ns='npm start'
alias nrd='npm run dev'
alias nrb='npm run build'

# Yarn
alias ys='yarn start'
alias yrd='yarn run dev'
alias yrb='yarn run build'
alias yrt='yarn run test'
alias yf='yarn format'
alias yl='yarn lint'
alias yw='yarn workspace'

# Git
alias clone='git clone'
alias pull='git pull'
alias fpull='git fetch -p; git pull'
alias push='git push'
alias diff='git diff'
alias status='git status'
alias add='git add'
alias fetch='git fetch'
alias merge='git merge'
alias mergeff='git merge --ff-only'
alias rebase='git rebase'
alias commit='git commit'
alias amend='git commit --amend'
alias unwip='git reset --soft HEAD^'

alias gto='git-open'
alias glog='git log'
alias gst='git status'
alias ga='git add'
alias gf='git fetch'
alias gb='git branch'
alias gbd='git branch -D'
alias gcm='git commit -m'
alias gm='git merge'
alias gr='git rebase'
alias gch='git checkout'
alias gchb='git checkout -b'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias grbs='git rebase --skip'
alias grhh='git reset --hard HEAD'
alias grlb='git branch | grep -v "master" | xargs git branch -D'

# Ruby
alias be='bundle exec'
alias bepi='bundle exec pod install'
alias bef='bundle exec fastlane'

# Rails
alias rmigrate='bin/rails db:migrate RAILS_ENV=development'
alias rs='rails s'
alias rc='rails c'

# Directories
alias d='cd ~/dev'
alias dfiles='cd ~/Developer && code .'
alias dojo='cd ~/dev/_dojo'

# Utils
alias server='http-server -o --cors -c-1 -a localhost -p 8000'
alias killdups='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user;killall Finder;echo "Rebuilt Open With, relaunching Finder"'
alias kill3000='kill -9 $(lsof -i tcp:3000 -t)'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/prayash/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/prayash/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/prayash/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/prayash/google-cloud-sdk/completion.zsh.inc'; fi

# -----------------------------------------------------------
## Key Bindings

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# -----------------------------------------------------------
## Additional Configs

# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions)
plugins=(zsh-syntax-highlighting)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# -----------------------------------------------------------
## Docker

# Docker restart
function docker-start() {
  machine_status=$(docker-machine status)

  if [ "Stopped" == $machine_status ]
  then
    docker-machine start default
  fi

  eval "$(docker-machine env default)"
}

# -----------------------------------------------------------
## Utility

# From Solomon Hawk: Auto open a pull request in browser
function pr() {
  local repo=`git remote -v | grep -m 1 "origin.*(push)" | sed -e "s/.*github.com[:/]\(.*\)\.git.*/\1/"`
  local branch=`git name-rev --name-only HEAD`
  echo "... creating pull request for branch \"$branch\" in \"$repo\""
  open https://github.com/$repo/pull/new/$branch
}

# From Ian Brennan: checkout master, pull changes, checkout the branch you were on, then rebase
function update() {
  git checkout master && git pull && git checkout - && git rebase master
}

# Flush DNS
function flushDNS() {
  sudo killall -HUP mDNSResponder
}

# -----------------------------------------------------------

# direnv
# eval "$(direnv hook zsh)"

# Fuzzy finder
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# . $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash

# Cue
export CUE_CLIENT_SRC=$HOME/dev/cue-client
export CUE_BACKEND_SRC=$GOPATH/src/github.com/cuecal/cue-backend
export CUE_EVENTPREDICTION_SRC=$HOME/dev/cue-eventprediction
export GOROOT=/usr/local/opt/go/libexec