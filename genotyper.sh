#!/bin/bash

for i in *.fastq ; do
	echo "$i ..."
	# GTseq_Genotyper.pl LocusInfo.csv "$i" > "$i.genos"
	genotyper.js LocusInfo.csv "$i" > "$i.genos"
done

