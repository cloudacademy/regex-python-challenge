check=$1
file=$2
expected=$3

rm -rf ../check/$check
mkdir -p ../check/$check
cp ../src/$file ../check/$check
echo "\n" >> ../check/$check/$file
cat ./texts/$check.py >> ../check/$check/$file

python3 ../check/$check/$file > output-$check.txt
grep "$expected" output-$check.txt
