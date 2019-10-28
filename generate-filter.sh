# this script will combine all filters into filter.txt.

header="[adblock plus 3.0]
! title: nothingblock filter
! homepage: https://github.com/dorjmi/nothingblock
! licence: https://github.com/dorjmi/nothingblock/blob/master/license.txt
! version: $(date +%Y.%m.%d.%H.%M.%S)
! expires: 2 days"

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
