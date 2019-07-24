# This script will combine all filters into filter.txt.

header="[Adblock Plus 3.0]
! Title: Nothingblock filter
! Homepage: https://github.com/sayo-melu/nothingblock
! Licence: https://github.com/sayo-melu/nothingblock/blob/master/LICENSE
! Expires: 2 days
! Version: $(date +%Y.%m.%d)
!"

rm filter.txt
touch filter.txt

echo  "$header" >> filter.txt

for item in filter-item/*
do
	 cat $item >> filter.txt
done

echo 'Filter generated.'
