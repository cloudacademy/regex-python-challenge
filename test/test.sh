lock_dir="../script.lock"

while ! mkdir $lock_dir 2>/dev/null; do
    sleep 1
done

check=$1
file=$2
expected=$3

rm -rf ../check/$check
mkdir -p ../check/$check
cp ../src/$file ../check/$check
echo "\n" >> ../check/$check/$file
cat ./texts/$check.py >> ../check/$check/$file

python3 ../check/$check/$file > output.txt
grep "$expected" output.txt

rm -rf $lock_dir
