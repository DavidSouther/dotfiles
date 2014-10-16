export PATH="$HOME/bin:$PATH"
export DOTREPO="git@github.com:DavidSouther/dotfiles.git"
export NEW_RELIC_LICENSE_KEY=0c372f5b06205ea21c5c9429ed7911020f0384d2

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use default 2>&1 >/dev/null
. <(npm completion)

function dockerhost {
    export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
}

function bootdocker {
    boot2docker init
    boot2docker start
    dockerhost
}

dockerhost

for f in $(ls $HOME/.profile.d) ; do
    source "$HOME/.profile.d/$f"
done
