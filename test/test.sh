check=$1
file=$2
expected=$3

rm -rf ../check/$check
mkdir -p ../check/$check
cp ../src/$file ../check/$check
cat ./texts/$check.py >> ../check/$check/$file

python3 ../check/$check/$file > output.txt
grep "$expected" output.txt
