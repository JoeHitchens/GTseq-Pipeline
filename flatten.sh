#/bin/bash


mkdir -p r1 r2

rm -f "./r1/*.fastq" "./r1/*.fastq.gz"
rm -f "./r2/*.fastq" "./r2/*.fastq.gz"


echo "R1 files ..."
for i in `find . | egrep "R1_\d\d\d\.fastq\.gz"` ; do b=`basename "$i"` ; echo $i ; cp "$i" "r1/$b" ; gunzip -f "r1/$b" ; done

echo "R2 files ..."
for i in `find . | egrep "R2_\d\d\d\.fastq\.gz"` ; do b=`basename "$i"` ; echo $i ; cp "$i" "r2/$b" ; gunzip -f "r2/$b" ; done

