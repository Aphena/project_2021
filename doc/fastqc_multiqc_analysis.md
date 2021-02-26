FASTQC and MultiQC analysis

Sequence length: 41 bp
0 sequences has been flagged as poor quality

All sample passed in Adapter Content, Basic Statistics, Per base N content, Per base sequence quality, Per sequence quality scores and Sequence Length Distribution. However, all failed in Overrepresented sequences, Per tile sequence quality and Sequence Duplication Levels. No pass in Per base sequence content and Per sequence GC content with many warnings and fails respectively. 

In all samples, reads were 41 bp in average in length and had great variations in total number, ranging from 0.83 to 12 million. They contained about 43 percentage of CG content and over 90 percentage of duplication.

Per base sequence quality (Mean Quality Score)
The sample contains reads are about 40 bp long. Quality score is equally high, 39 in average across all bases (meaning 1 in 10,000 Probability of incorrect base call, 99.99% base call accuracy), suggesting good quality of Per base sequence. Few bases at the beginning falls into relatively poor quality, this might be explained by techniqual errors and could be ignored. 

Per tile sequence quality (quality collectively across all reads within a sample)
/

Per sequence quality scores (the average quality score over the full length of all reads)
All sequences have peak Phred Quality Score at 40, suggesting high quality in almost all sequences.

Per base sequence content (the percentage of each of the four nucleotides)
(In a random library we would expect that there would be little to no difference between the four bases. The proportion of each of the four bases should remain relatively constant over the length of the read with %A=%T and %G=%C, and the lines in this plot should run parallel with each other.)

Our data shows biased sequence composition at the beginning of the read. This is a true technical bias, probably caused by priming using random hexamers. It can be corrected by trimming and in most cases doesn’t seem to adversely affect the downstream analysis. 
Our data also shows separation of G from ACT and low G percentage (?). This might because upregulated genes in heat shock might be lacking G-regions. T-rich region at the 3' end of the hsp70 genes. Poly-A tails might explain A-rich regions.

Per sequence GC content (the number of reads vs. percentage of bases G and C per read)
Mean GC content are separately distributed, from 39% to 51%. Our distribution slightly shifted to left compared to the theoretical model. Some biased subsets might be present (systemic bias). The module don’t know our actual genome’s GC content (I still need to analysis).

Per base N content (The percentage of base calls at each position for which an N was called).
0 for all samples, suggesting our data has a good quality and the base could be determined at each position.

Sequence Length Distribution
All samples have sequences of a single length of 41bp.

Sequence Duplication Levels
Our data shows high level of duplication in all samples, probably because of abundant ribosomal RNA in samples. 

Overrepresented sequences
Fail in all samples, around 8 to 12 percentage overrepresented sequences.  

Adapter Content
Almost no adapts were seen in each sample, less than 0.2%.

Cutadapt
After cutting 3’ adaptors AGA TCG GAA GAG CAC ACG TCT G by Cutadapt, multiqc is applied for QC. In the multiqc report, it is shown that general feature including sequence counts, quality, duplication level and overrepresented percentage has not been changed, however, adaptor contamination is less than 0.1% but all samples failed in sequence length distribution with few sequences less than 41 bp. It does not matter because great amounts of reads have been shown to having 41 bp in size, which would be eough for analyzing. 
