#!/bin/bash
hisat2-build -p 16 ./results/alignment_SC/R64_genome.fna ./results/alignment_SC/R64_index/R64_genome.fna
hisat2_extract_splice_sites.py ./results/alignment_SC/R64_genomic.gtf > ./results/alignment_SC/R64_splicesites.txt
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW9.fastq.gz -S EW9.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW9.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW10.fastq.gz -S EW10.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW10.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW11.fastq.gz -S EW11.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW11.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW12.fastq.gz -S EW12.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW12.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW13.fastq.gz -S EW13.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW13.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW14.fastq.gz -S EW14.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW14.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW15.fastq.gz -S EW15.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW15.SAM ./results/alignment_SC/SC_results/
hisat2 -p 16 -k 1 -x ./results/alignment_SC/R64_index/R64_genome.fna -U ./results/cutadapt/cutadaptEW16.fastq.gz -S EW16.SAM --known-splicesite-infile ./results/alignment_SC/R64_splicesites.txt --max-intronlen 2000
mv EW16.SAM ./results/alignment_SC/SC_results/
samtools view -S -b ./results/alignment_SC/SC_results/EW9.SAM > ./results/alignment_SC/SC_results/EW9.bam
samtools sort ./results/alignment_SC/SC_results/EW9 -o ./results/alignment_SC/SC_results/EW9.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW9.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW10.SAM > ./results/alignment_SC/SC_results/EW10.bam
samtools sort ./results/alignment_SC/SC_results/EW10 -o ./results/alignment_SC/SC_results/EW10.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW10.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW11.SAM > ./results/alignment_SC/SC_results/EW11.bam
samtools sort ./results/alignment_SC/SC_results/EW11 -o ./results/alignment_SC/SC_results/EW11.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW11.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW12.SAM > ./results/alignment_SC/SC_results/EW12.bam
samtools sort ./results/alignment_SC/SC_results/EW12 -o ./results/alignment_SC/SC_results/EW12.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW12.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW13.SAM > ./results/alignment_SC/SC_results/EW13.bam
samtools sort ./results/alignment_SC/SC_results/EW13 -o ./results/alignment_SC/SC_results/EW13.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW13.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW14.SAM > ./results/alignment_SC/SC_results/EW14.bam
samtools sort ./results/alignment_SC/SC_results/EW14 -o ./results/alignment_SC/SC_results/EW14.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW14.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW15.SAM > ./results/alignment_SC/SC_results/EW15.bam
samtools sort ./results/alignment_SC/SC_results/EW15 -o ./results/alignment_SC/SC_results/EW15.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW15.sorted.bam
samtools view -S -b ./results/alignment_SC/SC_results/EW16.SAM > ./results/alignment_SC/SC_results/EW16.bam
samtools sort ./results/alignment_SC/SC_results/EW16 -o ./results/alignment_SC/SC_results/EW16.sorted.bam
samtools index ./results/alignment_SC/SC_results/EW16.sorted.bam
hisat2-build -p 16 ./results/alignment_OP/Hansenula2_genome.fna ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna
hisat2_extract_splice_sites.py ./results/alignment_OP/Hansenula2_genomic.gtf > ./results/alignment_OP/Hansenula2_splicesites.txt
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW17.fastq.gz -S EW17.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW17.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW18.fastq.gz -S EW18.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW18.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW19.fastq.gz -S EW19.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW19.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW20.fastq.gz -S EW20.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW20.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW21.fastq.gz -S EW21.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW21.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW22.fastq.gz -S EW22.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW22.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW23.fastq.gz -S EW23.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW23.SAM ./results/alignment_OP/OP_results/
hisat2 -p 16 -k 1 -x ./results/alignment_OP/Hansenula2_index/Hansenula2_genome.fna -U ./results/cutadapt/cutadaptEW24.fastq.gz -S EW24.SAM --known-splicesite-infile ./results/alignment_OP/Hansenula2_splicesites.txt --max-intronlen 2000
mv EW24.SAM ./results/alignment_OP/OP_results/
samtools view -S -b ./results/alignment_OP/OP_results/EW17.SAM > ./results/alignment_OP/OP_results/EW17.bam
samtools sort ./results/alignment_OP/OP_results/EW17 -o ./results/alignment_OP/OP_results/EW17.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW17.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW18.SAM > ./results/alignment_OP/OP_results/EW18.bam
samtools sort ./results/alignment_OP/OP_results/EW18 -o ./results/alignment_OP/OP_results/EW18.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW18.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW19.SAM > ./results/alignment_OP/OP_results/EW19.bam
samtools sort ./results/alignment_OP/OP_results/EW19 -o ./results/alignment_OP/OP_results/EW19.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW19.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW20.SAM > ./results/alignment_OP/OP_results/EW20.bam
samtools sort ./results/alignment_OP/OP_results/EW20 -o ./results/alignment_OP/OP_results/EW20.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW20.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW21.SAM > ./results/alignment_OP/OP_results/EW21.bam
samtools sort ./results/alignment_OP/OP_results/EW21 -o ./results/alignment_OP/OP_results/EW21.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW21.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW22.SAM > ./results/alignment_OP/OP_results/EW22.bam
samtools sort ./results/alignment_OP/OP_results/EW22 -o ./results/alignment_OP/OP_results/EW22.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW22.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW23.SAM > ./results/alignment_OP/OP_results/EW23.bam
samtools sort ./results/alignment_OP/OP_results/EW23 -o ./results/alignment_OP/OP_results/EW23.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW23.sorted.bam
samtools view -S -b ./results/alignment_OP/OP_results/EW24.SAM > ./results/alignment_OP/OP_results/EW24.bam
samtools sort ./results/alignment_OP/OP_results/EW24 -o ./results/alignment_OP/OP_results/EW24.sorted.bam
samtools index ./results/alignment_OP/OP_results/EW24.sorted.bam
