#!/usr/bin bash

cd /Users/Huangshiyue/Desktop/FastQC

chmod 755 fastqc
sudo ln -s ~/Desktop/FastQC/fastqc /usr/local/bin/fastqc
./fastqc ~/Desktop/raw_data/data/EW9.fastq.gz
./fastqc ~/Desktop/raw_data/data/*.fastq.gz -o ~/Desktop/raw_data/report
