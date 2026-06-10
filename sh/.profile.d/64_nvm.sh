export NVM_DIR="$HOME/.nvm"

# Load nvm on demand. Sourcing nvm.sh eagerly runs nvm_auto, which validates the
# default ("lts/*") version on every shell and costs ~1.2s of startup. Instead,
# define light shims: the first call to nvm/node/npm/npx sources nvm.sh (paying
# the cost once, when node is actually needed) and then hands off to the real
# command. mise does not manage node, so nvm must stay available.
_load_nvm() {
    unfunction nvm node npm npx
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

nvm()  { _load_nvm; nvm  "$@"; }
node() { _load_nvm; node "$@"; }
npm()  { _load_nvm; npm  "$@"; }
npx()  { _load_nvm; npx  "$@"; }
