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

runproject() {
  if [ "$1" != "" ]
  then
    dotnet run --project "$1"
  else
    echo "Provide a csproj to run!"
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
