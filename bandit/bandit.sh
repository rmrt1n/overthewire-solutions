#!/usr/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./wargames_bandit <level>"
  exit 1
else
  case $1 in
    "0") # level 0: bandit0
      sshpass -p bandit0 \
      ssh -q bandit0@bandit.labs.overthewire.org -p 2220 \
      'cat readme'
      ;;
    "1") # level 1: boJ9jbbUNNfktd78OOpsqOltutMc3MY1
      sshpass -p boJ9jbbUNNfktd78OOpsqOltutMc3MY1 \
      ssh -q bandit1@bandit.labs.overthewire.org -p 2220 \
      'cat ./-'
      ;;
    "2") # level 2: CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
      sshpass -p CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9 \
      ssh -q bandit2@bandit.labs.overthewire.org -p 2220 \
      'cat spaces\ in\ this\ filename'
      ;;
    "3") # level 3: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
      sshpass -p UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK \
      ssh -q bandit3@bandit.labs.overthewire.org -p 2220 \
      'cat inhere/.hidden'
      ;;
    "4") # level 4: pIwrPrtPN36QITSp3EQaw936yaFoFgAB
      sshpass -p pIwrPrtPN36QITSp3EQaw936yaFoFgAB \
      ssh -q bandit4@bandit.labs.overthewire.org -p 2220 \
      'file inhere/* | grep ASCII | cut -d ':' -f 1 | xargs cat'
      ;;
    "5") # level 5: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
      sshpass -p koReBOKuIDDepwhWk7jZC0RTdopnAYKh\
      ssh -q bandit5@bandit.labs.overthewire.org -p 2220 \
      "du -ab | awk '/1033/ {print $2}' | xargs cat | head -n 1"
      ;;
    "6") # level 6: DXjZPULLxYr17uwoI01bNLQbtFemEgo7
      sshpass -p DXjZPULLxYr17uwoI01bNLQbtFemEgo7 \
      ssh -q bandit6@bandit.labs.overthewire.org -p 2220 \
      'find / -user bandit7 -group bandit6 2>/dev/null | xargs cat'
      ;;
    "7") # level 7: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
      sshpass -p HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs \
      ssh -q bandit7@bandit.labs.overthewire.org -p 2220 \
      "awk '/millionth/ {print $2}' data.txt"
      ;;
    "8") # level 8: cvX2JJa4CFALtqS87jk27qwqGhBM9plV
      sshpass -p cvX2JJa4CFALtqS87jk27qwqGhBM9plV \
      ssh -q bandit8@bandit.labs.overthewire.org -p 2220 \
      'cat data.txt | sort | uniq -u'
      ;;
    "9") # level 9: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
      sshpass -p UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR \
      ssh -q bandit9@bandit.labs.overthewire.org -p 2220 \
      "strings data.txt | grep '&=' | cut -d ' ' -f 2"
      ;;
    "10") # level 10: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
      sshpass -p truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk \
      ssh -q bandit10@bandit.labs.overthewire.org -p 2220 \
      "base64 -d data.txt | cut -d ' ' -f 4"
      ;;
    "11") # level 11: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
      sshpass -p IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR \
      ssh -q bandit11@bandit.labs.overthewire.org -p 2220 \
      "cat data.txt | tr '[a-zA-Z]' '[n-za-mN-ZA-M]' | cut -d ' ' -f 4"
      ;;
    "12") # level 12: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
      sshpass -p 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu \
      ssh -q bandit12@bandit.labs.overthewire.org -p 2220 \
      "mkdir -p /tmp/temp; cd /tmp/temp; cp /home/bandit12/data.txt .; \
      xxd -r data.txt data.bin; \
      zcat data.bin | bzcat | zcat | tar -xO | tar -xO | bzcat | tar -xO | \
      zcat | cat | cut -d ' ' -f 4; rm -rf /tmp/temp"
      ;;
    "13") # level 13: 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
      sshpass -p 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL \
      ssh -q bandit13@bandit.labs.overthewire.org -p 2220 \
      "ssh -q bandit14@localhost -i sshkey.private -o stricthostkeychecking=no \
      'cat /etc/bandit_pass/bandit14'"
      ;;
    "14") # level 14: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
      sshpass -p 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e \
      ssh -q bandit14@bandit.labs.overthewire.org -p 2220 \
      'cat /etc/bandit_pass/bandit14 | nc localhost 30000 | sed -n 2p'
      ;;
    "15") # level 15: BfMYroe26WYalil77FoDi9qh59eK5xNr
      sshpass -p BfMYroe26WYalil77FoDi9qh59eK5xNr \
      ssh -q bandit15@bandit.labs.overthewire.org -p 2220 \
      'cat /etc/bandit_pass/bandit15 | \
      openssl s_client -connect localhost:30001 -quiet 2>/dev/null | sed -n 2p'
      ;;
    "16") # level 16: cluFn7wTiGryunymYOu4RcffSxQluehd
      sshpass -p cluFn7wTiGryunymYOu4RcffSxQluehd \
      ssh -q bandit16@bandit.labs.overthewire.org -p 2220 \
      'cat /etc/bandit_pass/bandit16 | \
      openssl s_client -connect localhost:31790 -quiet 2>/dev/null | \
      tail -n +2 | head -n -1' \
      > bandit17.private; chmod 600 bandit17.private
      ;;
    "17") # level 17: bandit17.private
      ssh -q bandit17@bandit.labs.overthewire.org -p 2220 -i bandit17.private \
      'diff passwords.old passwords new | tail -n 1 | cut -c 3-'
      ;;
    "18") # level 18: kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
      sshpass -p kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd \
      ssh -q bandit18@bandit.labs.overthewire.org -p 2220 \
      'cat readme'
      ;;
    "19") # level 19: IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x 
      sshpass -p IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x \
      ssh -q bandit19@bandit.labs.overthewire.org -p 2220 \
      './bandit20-do id=11020 cat /etc/bandit_pass/bandit20'
      ;;
    "20") # level 20: GbKksEFF4yrVs6il55v6gwY5aVje5f0j 
      sshpass -p GbKksEFF4yrVs6il55v6gwY5aVje5f0j \
      ssh -q bandit20@bandit.labs.overthewire.org -p 2220 \
      '(cat /etc/bandit_pass/bandit20 | nc -l localhost -p 9999 &); \
      sleep 0.5; ./suconnect 9999 | tail -n 0'
      ;;
    "21") # level 21: gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
      sshpass -p gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr \
      ssh -q bandit21@bandit.labs.overthewire.org -p 2220 \
      "cat /etc/cron.d/crobjob_bandit22 | head -n 1 | cut -d ' ' -f 3 | \
      xargs cat | sed -n 2p | cut -d ' ' -f 3 | xargs cat"
      ;;
    "22") # level 22: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
      sshpass -p Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI \
      ssh -q bandit22@bandit.labs.overthewire.org -p 2220 \
      "cat /tmp/$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)"
      ;;
    "23") # level 23: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
      sshpass -p jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n \
      ssh -q bandit23@bandit.labs.overthewire.org -p 2220 \
      'mkdir -p /tmp/temp; touch /tmp/temp/script.sh /tmp/temp/passwd; \
      chmod 777 /tmp/temp/script.sh; chmod 666 /tmp/temp/passwd; \
      echo "cat /etc/bandit_pass/bandit24 > /tmp/temp/passwd" > \
      /tmp/temp/script.sh; cp /tmp/temp/script.sh /var/spool/bandit24/; \
      sleep 60; cat /tmp/temp/passwd; rm -rf /tmp/temp;'
      ;;
    "24") # level 24: UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
      sshpass -p UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ \
      ssh -q bandit24@bandit.labs.overthewire.org -p 2220 \
      'touch /tmp/outp; \ for i in {0000..9999}; \
      do echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i"; done | \
      nc localhost 30002 > /tmp/outp; \
      grep "bandit25 is" /tmp/outp | cut -d " " -f 7; rm /tmp/outp'
      ;;
    # issue scripting here
    "25") # level 25: uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
      # sshpass -p uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG \
      # ssh -q bandit25@bandit.labs.overthewire.org -p 2220 ;\
      # 'ssh -q bandit26@localhost \
      # -i bandit26.sshkey -o stricthostkeychecking=no'
      # resize terminal, press v into vim, :edit /etc/bandit_pass/bandit26
      echo 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
      ;;
    # issue scripting here
    "26") # level 26: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
      # sshpass -p 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z \
      # ssh -q bandit26@bandit.labs.overthewire.org -p 2220 ;\
      # './bandit27-do id=11027 cat /etc/bandit_pass/bandit27'
      # resize terminal, press v into vim, :set shell /bin/bash, :shell
      # ./bandit27-do id=11027 cat /etc/bandit_pass/bandit27
      echo 3ba3118a22e93127a4ed485be72ef5ea
      ;;
    # issue scripting here
    "27") # level 27: 3ba3118a22e93127a4ed485be72ef5ea
      # sshpass -p 3ba3118a22e93127a4ed485be72ef5ea \
      # ssh -q bandit27@bandit.labs.overthewire.org -p 2220 \
      # 'mkdir -p /tmp/temp; cd /tmp/temp; \ 
      # git clone ssh://bandit27-git@localhost/home/bandit27-git/repo; \
      # enter password manually :(
      # cat repo/README | cut -d ' ' -f 8; cd ~; rm -rf /tmp/temp'
      echo 0ef186ac70e04ea33b4c1853d2526fa2
      ;;
    # issue scripting here
    "28") # level 28: 0ef186ac70e04ea33b4c1853d2526fa2
      # sshpass -p 0ef186ac70e04ea33b4c1853d2526fa2 \
      # ssh -q bandit28@bandit.labs.overthewire.org -p 2220 \
      # "mkdir -p /tmp/temp; cd /tmp/temp; \
      # git clone ssh://bandit28-git@localhost/home/bandit28-git/repo; \
      # enter password manually :(
      # cd repo; git log | grep commit | sed -n 2p | cut -d ' ' -f 2 | \
      # git checkout -; cat README.md | awk '/password/ {print $3}'; \
      # cd; rm -rf /tmp/temp"
      echo bbc96594b4e001778eee9975372716b2
      ;;
    # issue scripting here
    "29") # level 29: bbc96594b4e001778eee9975372716b2
      # sshpass -p bbc96594b4e001778eee9975372716b2 \
      # ssh -q bandit29@bandit.labs.overthewire.org -p 2220 \
      # "mkdir -p /tmp/temp; cd /tmp/temp; \
      # git clone ssh://bandit29-git@localhost/home/bandit29-git/repo; \
      # # enter password manually :( \
      # cd repo; git checkout dev; cat README.md | \
      # awk '/password/ {print $3}'; cd; rm -rf /tmp/temp"
      echo 5b90576bedb2cc04c86a9e924ce42faf
      ;;
    # issue scripting here
    "30") # level 30: 5b90576bedb2cc04c86a9e924ce42faf
      # sshpass -p 5b90576bedb2cc04c86a9e924ce42faf \
      # ssh -q bandit30@bandit.labs.overthewire.org -p 2220 \
      # 'mkdir -p /tmp/temp; cd /tmp/temp; \
      # git clone ssh://bandit29-git@localhost/home/bandit29-git/repo; \
      # enter password manually :( \
      # cd repo; git tag; git show secret; cd; rm -rf /tmp/temp'
      echo 47e603bb428404d265f59c42920d81e5
      ;;
    # issue scripting here
    "31") # level 31: 47e603bb428404d265f59c42920d81e5
      # sshpass -p 47e603bb428404d265f59c42920d81e5 \
      # ssh -q bandit31@bandit.labs.overthewire.org -p 2220 \
      # 'mkdir -p /tmp/temp; cd /tmp/temp; \
      # git clone ssh://bandit29-git@localhost/home/bandit29-git/repo; \
      # # enter password manually :( \
      # cd repo; rm .gitignore; echo "May I come in?" > key.txt; \
      # git add key.txt; git commit -m "added key.txt"; \
      # git push origin master; \
      # # enter password manually :( \
      # # copy next level password manually ;( \
      # d; rm -rf /tmp/temp'
      echo 56a9bf19c63d650ce78e6ec0354ee45e
      ;;
    # issue scripting here
    "32") # level 32: 56a9bf19c63d650ce78e6ec0354ee45e
      # sshpass -p 56a9bf19c63d650ce78e6ec0354ee45e \
      # ssh -q bandit31@bandit.labs.overthewire.org -p 2220; \
      # # after login, enter $0, cd ../bandit33; cat README.txt
      echo "bandit completed";
      ;;
    *)
      echo "unknown level $1"
      exit 1
  esac
fi

