#!/bin/bash
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW9.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW9.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW10.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW10.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW11.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW11.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW12.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW12.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW13.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW13.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW14.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW14.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW15.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW15.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW16.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW16.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW17.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW17.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW18.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW18.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW19.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW19.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW20.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW20.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW21.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW21.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW22.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW22.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW23.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW23.fastq.gz
cutadapt -a AGATCGGAAGAGCACACGTCTG ~/Desktop/2021-RNAproject/data/EW24.fastq.gz -o ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW24.fastq.gz
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW9.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW10.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW11.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW12.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW13.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW14.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW15.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW16.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW17.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW18.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW19.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW20.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW21.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW22.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW23.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
fastqc ~/Desktop/2021-RNAproject/results/cutadapt/cutadaptEW24.fastq.gz --extract -o ~/Desktop/2021-RNAproject/results/cutadapt_report/
multiqc ~/Desktop/2021-RNAproject/results/cutadapt_report -o ~/Desktop/2021-RNAproject/results/cutadapt_report
