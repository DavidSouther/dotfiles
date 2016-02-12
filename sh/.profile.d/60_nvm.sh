export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh
nvm use default 2>&1 >/dev/null
. <(npm completion)
export PATH="./node_modules/.bin:$PATH"

