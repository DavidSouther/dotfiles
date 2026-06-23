set -gx CLICOLOR 1

# abbr expands inline at the prompt; use -ag for global (session-scoped, re-set each startup)
abbr -ag ls 'ls -G'
abbr -ag lstcp 'lsof -i TCP'
