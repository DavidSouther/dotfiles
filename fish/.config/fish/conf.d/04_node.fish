# nvm doesn't support fish natively. Options in order of preference:
#   1. mise (already in 02_mise.fish): mise use --global node@lts
#   2. fnm (brew install fnm): fast, fish-native drop-in for nvm
if command -q fnm
    fnm env --use-on-cd | source
end
