sed -i 's|\([0-9][0-9][0-9][0-9]\)-\([0-1][0-9]\)-\([0-3][0-9]\)|\3.\2.\1|g' OutFile.txt
sed -i 's/null//g' OutFile.txt
sed -i 's/.$//' OutFile.txt