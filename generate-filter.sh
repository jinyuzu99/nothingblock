# This script will combine all filters into filter.txt and filter-zero.txt.


# Nothingblock

header="[Adblock Plus 3.0]
! Title: Nothingblock filter
! Homepage: https://github.com/sayo-melu/nothingblock
! Licence: https://github.com/sayo-melu/nothingblock/blob/master/LICENSE
! Expires: 5 days
! Version: $(date +%Y.%m.%d)
!"

rm filter.txt
touch filter.txt

echo  "$header" >> filter.txt

for item in filter-item/*
do
	cat $item >> filter.txt
done


# Nothingblock Zero

header_zero="[Adblock Plus 3.0]
! Title: Nothingblock Zero filter
! Homepage: https://github.com/sayo-melu/nothingblock
! Licence: https://github.com/sayo-melu/nothingblock/blob/master/LICENSE
! Expires: 5 days
! Version: $(date +%Y.%m.%d)
!"

rm filter-zero.txt
touch filter-zero.txt

echo  "$header_zero" >> filter-zero.txt

for item in filter-zero-item/*
do
	cat $item >> filter-zero.txt
done

echo "Filter generated."