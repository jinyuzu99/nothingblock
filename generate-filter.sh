# this script will combine all filters into filter.txt.

header="[adblock plus 3.0]
! title: nothingblock filter
! homepage: https://github.com/sayo-melu/nothingblock
! licence: https://github.com/sayo-melu/nothingblock/blob/master/license
! expires: 2 days
! version: $(date +%y.%m.%d)"

rm filter.txt
touch filter.txt

echo  "$header" >> filter.txt

for item in filter-item/*
do
	cat $item >> filter.txt
done

case $(uname) in

  linux)
    sed -i 's/^ *//g' filter.txt
    sed -i 's/^\t*//g' filter.txt
    sed -i '7,${/^!/d}' filter.txt
  ;;

  darwin)
    gsed -i 's/^ *//g' filter.txt
	  gsed -i 's/^\t*//g' filter.txt
	  gsed -i '7,${/^!/d}' filter.txt || echo -e '\nerror, macos should install gnu-sed.\n'; exit
  ;;

esac

echo 'filter generated.'
