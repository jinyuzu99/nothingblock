#ADB head, will autofill date

adbHead="[Adblock Plus 3.0]
! Title: NothingBlock filter
! Homepage: https://github.com/sayomelu/NothingBlock
! Licence: https://github.com/sayomelu/nothingblock/blob/master/LICENSE
! Expires: 5 days
! Version: $(date +%Y.%m.%d)
"

echo 'This script will combine all filters in develop branch'
echo 'Will replace the old filter.txt and commit change'
echo 'Commit all changes before running this script'
echo 'Continue?(Y/N)'

read answer
if [[ "$answer" = [Yy] ]];
	then
	echo 'starting';
	else
	echo 'exiting';
	exit;
fi

echo 'switch to develop branch'
git checkout develop

echo 'generating new filter.txt'
touch newfiltercahe.txt

echo  "$adbHead" >> newfiltercahe.txt

for filter in filters/*
do
	cat $filter >> newfiltercahe.txt
done

rm filter.txt
mv newfiltercahe.txt filter.txt
echo 'generate complete, commiting'
git add filter.txt
git commit -m Auto\ combine\ $(date +%Y.%m.%d)
echo 'Done'