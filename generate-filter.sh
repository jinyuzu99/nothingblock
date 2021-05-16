#!/bin/sh
# combine all filter-item into filter.txt.

header="[Adblock Plus 3.0]
! Title: nothingblock filter
! Description: block unnecessary web element to have 'nothing more to take away'.
! Homepage: https://github.com/dorjmi/nothingblock
! Version: $(date +%Y.%m.%d.%H%M%S)
! Expires: 2 days"

rm filter.txt
touch filter.txt

echo "$header" >> filter.txt

for item in filter-item/*
do
  cat $item >> filter.txt
done

case $(uname) in

  Linux)
    sed -i 's/^ *//g' filter.txt
    sed -i 's/^\t*//g' filter.txt
    sed -i '7,${/^!/d}' filter.txt
  ;;

  Darwin)
    gsed -i 's/^ *//g' filter.txt
    gsed -i 's/^\t*//g' filter.txt
    gsed -i '7,${/^!/d}' filter.txt || echo -e '\nerror, macos should install gnu-sed.\n'; exit
  ;;

esac

echo 'filter generated.'
