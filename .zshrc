<<<<<<< HEAD
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
. ~/.zsh_aliases
. ~/.zsh_functions

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

ZSH_THEME="pygmalion"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dean/.oh-my-zsh"

export PATH=$HOME/go/bin:$PATH
export PATH="$PATH:/Users/dean/.dotnet/tools"

LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_ALL="en_US.UTF-8"

plugins=(
  osx
  extract
  last-working-dir
  urltools
  httpie
  git git-flow
  colorize command-not-found
  colored-man-pages
  history
  docker docker-compose kubectl minikube
  dotenv
  zsh-autosuggestions
  zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $(dirname $(gem which colorls))/tab_complete.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
compdef _gitignoreio gi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source <(navi widget zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
=======
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dean/.oh-my-zsh"
DEFAULT_USER="/"

ZSH_THEME="pygmalion"

plugins=(
  osx
  extract
  last-working-dir
  urltools
  httpie
  git git-flow
  colorize command-not-found
  colored-man-pages
  history
  docker docker-compose kubectl minikube
  dotenv
  zsh-autosuggestions
  zsh-syntax-highlighting
  )

alias cls="clear"
alias rmdir="rm -rf"
alias l1="ls -1"
alias ll="ls -1a"

alias gotocode="cd ~/Desktop/code"
alias htop="sudo htop"
alias speedtest="speedtest-cli"

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias coverlet="~/.dotnet/tools/coverlet"

alias az-login="az login"
alias get-creds="az aks get-credentials"

alias runsonport="lsof -i"
alias topten="history | sort -rn | head"
alias sshdir="cd ~/.ssh"
alias build="dotnet build"
alias restore="dotnet restore"
alias nuget-locals="dotnet nuget locals all --list"
alias lc='colorls -lA --sd'

runproject() {
  if [ "$1" != "" ]
  then
    dotnet run --project "$1"
  else
    echo "Provide a csproj to run!"
  fi
}

classlib() {
  if [ "$1" != "" ]
  then
    dotnet new classlib --name "$1"
  else
    echo "Provide a name for the project!"
  fi
}

webapi() {
  if [ "$1" != "" ]
  then
    dotnet new webapi --name "$1"
  else
    echo "Provide a name for the project!"
  fi
}

xunit() {
  if [ "$1" != "" ]
  then
    dotnet new xunit --name "$1"
  else
    echo "Provide a name for the project!"
  fi
}

slnadd() {
  if [ "$1" != "" ]
  then
    dotnet sln add "$1"
  else
    echo "Provide a project name to add to the solution!"
  fi
}

dockerit() {
  if [ "$1" != "" ]
  then
    docker exec -it "$1" /bin/bash
  else
    echo "Provide a pod to bash into!"
  fi
}

coverage() {
  if [ "$1" != "" ]
  if [ "$2" != "" ]
  then
    coverlet "$1" --target "dotnet" --targetargs="test "$2" --no-build"
  else
    echo "Provide a test assembly and the path to the test project!"
  fi
}

ddrun() {
  local CURRENT_DIR=${$(pwd)}
  docker run -v ${CURRENT_DIR}:/source -it dotnet /bin/bash
}

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $(dirname $(gem which colorls))/tab_complete.sh
>>>>>>> 517acd391239d8b287a3e0b8d2da80c745ed5267
