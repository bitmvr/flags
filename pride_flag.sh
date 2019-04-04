#!/usr/bin/env bash

sleepSpeed=0.001
line=$(printf ' %.0s' {1..50})
paintBucket=( '196' '214' '226' '28' '27' '90' )

for paint in "${paintBucket[@]}"; do
  swipe=1
  length=1
  while [ $swipe -le 2 ]; do    
    while [ $length -le 50 ]; do
      printf "\\033[48;5;${paint}m \\033[0m"
      sleep "${sleepSpeed}"
      ((length++))
    done
    length=1
    ((swipe++))
    printf '\n'
  done
done

