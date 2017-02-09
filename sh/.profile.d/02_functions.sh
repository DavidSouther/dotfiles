#!/bin/bash

function clean_diff(){
  color_code_regex="(\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K])"

  # simplify the unified patch diff header
  sed -r "s/^($color_code_regex)diff --git .*$//g" | \
    sed -r "s/^($color_code_regex)index .*$/\1$(rule)/g" | \
    sed -r "s/^($color_code_regex)[\+\-]/\1 /g"

}

## Print a horizontal rule
rule () {
  #printf "%$(tput cols)s\n" | tr ' ' -
  printf "%80s\n" | tr ' ' -
}

## kill the process listening on a TCP port.
killport () {
  lsof -iTCP -sTCP:LISTEN | grep $1 | awk '{print $2}' | xargs kill 2>/dev/null
  lsof -iTCP -sTCP:LISTEN -P | grep $1 | awk '{print $2}' | xargs kill 2>/dev/null
}

