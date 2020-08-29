# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/federico/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Comment the following line to disable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

#HIST_STAMPS="dd.mm.yyyy"

plugins=(
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux
	#archlinux
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/cargo
	# cargo
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose
	docker-compose
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
	git
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/golang
	# golang
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rust
	# rust
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-autosuggestions
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls="lsd -h"
alias l="lsd -lah"
alias ll="lsd -lh"
alias la="lsd -lAh"
alias lsa="ls -lah"
alias tree="ls --tree"
alias tree1="ls --tree --depth 1"
alias tree2="ls --tree --depth 2"
alias tree3="ls --tree --depth 3"
alias tree4="ls --tree --depth 4"

alias vim="nvim"

alias dc="docker-compose"

alias gl="git log"
alias glo="git log --oneline"

path+=('/opt/flutter/bin')
export PATH

export EDITOR='nvim'
export VISUAL="nvim"

export GOPATH=$HOME/dev/go

export DOCKER_BUILDKIT=1
