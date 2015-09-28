#!/bin/bash
export PATH=$(\
  echo $PATH | \
    tr ":" "\n" | \
    sort | uniq | \
    awk '{ print length($0) " " $0}' | \
    sort -nr | \
    awk '{print $2}' | \
    tr '\n' ':' \
)
