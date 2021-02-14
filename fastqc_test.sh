#!/usr/bin bash

cd /Users/Huangshiyue/Desktop/QC/FastQC

chmod 755 fastqc
./fastqc ~/Desktop/raw_data/data/*.fastq.gz -o ~/Desktop/raw_data/report
