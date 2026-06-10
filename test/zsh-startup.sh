#!/usr/bin/env zsh
# Regression test: interactive zsh startup budget.
#
# Measures the wall-clock time of `zsh -i -c exit` (which sources the installed
# ~/.zshrc) and asserts the median over N runs stays under a budget.
#
#   ZSH_STARTUP_BUDGET_MS  budget for the median run   (default 750)
#   ZSH_STARTUP_RUNS       number of timed runs        (default 10)
#
# Exit 0 if median <= budget, 1 otherwise.

emulate -L zsh
zmodload zsh/datetime

local budget=${ZSH_STARTUP_BUDGET_MS:-750}
local runs=${ZSH_STARTUP_RUNS:-10}

# Warm up: prime filesystem / git / completion caches so the first cold run
# does not skew the measurement.
zsh -i -c exit >/dev/null 2>&1
zsh -i -c exit >/dev/null 2>&1

local -a samples
local i start end
for i in {1..$runs}; do
  start=$EPOCHREALTIME
  zsh -i -c exit >/dev/null 2>&1
  end=$EPOCHREALTIME
  samples+=( $(( (end - start) * 1000 )) )
done

# Numeric ascending sort, then pick the median.
local -a sorted
sorted=( ${(no)samples} )
local median=${sorted[$(( (runs + 1) / 2 ))]}
local min=${sorted[1]}
local max=${sorted[runs]}

printf 'zsh startup over %d runs: min %.0f ms / median %.0f ms / max %.0f ms (budget %d ms)\n' \
  $runs $min $median $max $budget

if (( median <= budget )); then
  print -- "PASS"
  exit 0
else
  print -- "FAIL: median ${median%.*} ms exceeds budget ${budget} ms"
  exit 1
fi
