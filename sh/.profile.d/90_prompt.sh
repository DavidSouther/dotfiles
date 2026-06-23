setopt PROMPT_SUBST

precmd() {
  local exit_code=$?

  if git rev-parse --git-dir >/dev/null 2>&1; then
    local branch=$(git rev-parse --abbrev-ref HEAD)
    local repo_root=$(git rev-parse --show-toplevel)
    local repo_name=$(basename "$repo_root")
    local rel_path="${PWD#$repo_root}"
    export DISPLAY_PATH="%F{yellow}.../$repo_name%F{magenta}[$branch]%F{yellow}$rel_path%f"
  else
    export DISPLAY_PATH="${PWD/$HOME/~}"
  fi

  if [ $exit_code -ne 0 ]; then
    export EXIT_CODE="%F{red}($exit_code)%f"
  else
    export EXIT_CODE=""
  fi

  export PROMPT_TIME="%F{green}${(%):-%D{%H:%M:%S}%f"
  export PROMPT_USER_HOST="%F{cyan}%n@%m%f"
  export PROMPT_SIGNIFIER="${EXIT_CODE}%B$%b"
}

PROMPT='${PROMPT_TIME} ${PROMPT_USER_HOST} ${DISPLAY_PATH} ${PROMPT_SIGNIFIER} '
