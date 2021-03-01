---
title: "README.md for EW1256_S1_L007_R1_001_split_1mismatch"
author: "Edward Wallace"
email: ewallace@uchicago.edu; Edward.Wallace@ed.ac.uk
date: "1 February 2021"
---

README.md for fastq files on yeast RNA seq data on growth and heat shock.

## Background on sample preparation 

This directory contains results of 3 combined yeast RNA-seq experiments in 2015.

We need to double-check the RNA extraction method from EW's lab book.

Libraries were prepared by EW using the RNATagSeq method:

	Shishkin, et al. (2015). *Simultaneous generation of many RNA-seq libraries in a single reaction.* Nature Methods, 12(4), 323–325. http://doi.org/10.1038/nmeth.3313 (Broad institute).
	
Some modifications to the published protocol are described in [ewallace/protocols/RNAtagseq.md](https://github.com/ewallace/protocols/blob/master/RNAtagseq.md).

Libraries were combined into a single RNA-seq run in November 2015 at the University of Chicago Functional Genomics Core. 

Those results were output into single fastq file  `EW1256_S1_L007_R1_001.fastq.gz`.

## Splitting the fastq file

EW ran `SplitRNATagSeqFastQ.py` from [pyRNATagSeq](https://github.com/ewallace/pyRNATagSeq). This code was not under version control at the time; the run was probably

```
python SplitRNATagSeqFastQ.py -r1 EW1256_S1_L007_R1_001.fastq.gz \
  -ss EWallaceRNASeq5Nov2015SampleSheet.txt \
  -m 1 \
  -o EW1256_S1_L007_R1_001_split_1mismatch
```

`-m 1` means that up to one mismatch in the TagRead was allowed. The paper above, and code documentation, give more detail on the structure of the reads and the splitting algorithm.

If you wish to repeat this, double-check `TagCode` vs `TagRead` as the relevant column.


## The split fastq files

These demultiplexed split fastq files, one per sample, are contained in this directory.

File `EW1A.fastq.gz` is the reads from SampleID `EW1A`, corresponding to TagRead `AATCGTTCT`, and so on.


## Experiment 1: *Saccharomyces cerevisiae* growth and centrifugation

Samples EW1A through EW4B.

This experiment was to measure transcript levels in S. cerevisiae grown in Synthetic Complete media with 2% glucose (SC) at 30C with shaking, to different ODs and/or held in a pellet after centrifugation for 10 minutes. It was a control experiment related to a heat shock project in different growth media. We took two technical replicates (A/B) from a single biological sample split after RNA extraction, to measure technical reproducibility of library prep. So EW1A, EW1B are the technical replicates of sample EW1.

* EW1: S. cerevisiae in SC+ OD 0.2
* EW2: S. cerevisiae in SC+ OD 0.4
* EW3: S. cerevisiae in SC+ OD 0.4+ 10min pellet
* EW4: S. cerevisiae in SC+ OD 0.8


## Experiment 2: *Saccharomyces cerevisiae* heat shock and recovery

Samples EW9-EW16.

This experiment measured the transcriptome of S. cerevisiae BY4741 grown at 30C in YPDA to OD approximately 0.4, then divided into 4 aliquots subjected to different conditions. One was harvested immediately. Two others were each heat-shocked at a different temperature (42C or 46C) for 10 minutes by centrifugation in a 50ml Falcon tube and holding the pellet with residual media in a water bath at the desired temperature (CHECK LAB BOOK). A fourth "recovery" sample was heat-shocked for 10 minutes at 42C and then resuspended in 30C media for a further 20 minutes. We did two biological replicates - independent colonies picked and grown overnight in different tubes, transferred to different flasks. In summary, conditions were:

* 30C
* 42C 10 min
* 46C 10 min
* 42C 10 min + 30C 20min

It was an important design consideration to grow in YPD plus added adenine, because our previous experiments in SC had detected adenine starvation by upregulation of adenine synthesis genes. 

## Experiment 3: *Ogataea parapolymorpha* heat shock and recovery

Samples EW17-24.

This experiment was very similar to Experiment 2, but with O. parapolymorpha strain DL-1 / NRRL Y-7560. This is a thermotolerant yeast so all temperatures were shifted up to do a direct comparison of "subjective temperature" for the yeast. Two biological replicates were each grown in YPDA at 38C to OD approximately 0.4, then split into four samples:

* 38C
* 48C 10 min
* 52C 10 min
* 48C 10 min + 38C 20min


## Sample sheet
 
Here is a tab-separated copy of the sample sheet. It will not display nicely in markdown but can be opened in a different format. It is identical to the file `EWallaceRNASeq5Nov2015SampleSheet.txt`, except this column header is `TagRead` not `TagCode`.

`LibID` describes the ID of the library preparation batch, related to the PCR primers and P7ID used. It is *not* to be confused with `SampleID`.
 
```
LibID	SampleID	Strain	Notes	LibPrepDate	TagID	TagWell	TagRead	P7ID	P7Code	SeqDate	SeqID
EW5	EW1A	BY4741	"S. cerevisiae in SC+ OD 0.2, tech rep 1"	30/10/15	Tag33	-	AATCGTTCT	P7_B1	GCACACGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW5	EW2A	BY4741	"S. cerevisiae in SC+ OD 0.4, tech rep 1"	30/10/15	Tag02	A02	AAGTGCCGT	P7_B1	GCACACGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW5	EW3A	BY4741	"S. cerevisiae in SC+ OD 0.4+ 10min pellet, tech rep 1"	30/10/15	Tag03	A03	AATAATGTT	P7_B1	GCACACGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW5	EW4A	BY4741	"S. cerevisiae in SC+ OD 0.8, tech rep 1"	30/10/15	Tag04	A04	ACAATCTCT	P7_B1	GCACACGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW6	EW1B	BY4741	"S. cerevisiae in SC+ OD 0.2, tech rep 2"	30/10/15	Tag05	A05	AGAGGACCT	P7_B2	TCTGGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW6	EW2B	BY4741	"S. cerevisiae in SC+ OD 0.4, tech rep 2"	30/10/15	Tag06	A06	AGTTAGAGT	P7_B2	TCTGGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW6	EW3B	BY4741	"S. cerevisiae in SC+ OD 0.4+ 10min pellet, tech rep 2"	30/10/15	Tag07	A07	ATAATTCTT	P7_B2	TCTGGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW6	EW4B	BY4741	"S. cerevisiae in SC+ OD 0.8, tech rep 2"	30/10/15	Tag08	A08	ATGTTGTAT	P7_B2	TCTGGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW6	EW9	BY4741	"S1.30: S. cerevisiae, biol rep 1, 30C"	27/10/15	Tag09	C01	CAACACTTT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW10	BY4741	"S1.42: S. cerevisiae, biol rep 1, 42C 10 min"	27/10/15	Tag10	C02	CAAGTGATT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW11	BY4741	"S1.46: S. cerevisiae, biol rep 1, 46C 10 min"	27/10/15	Tag11	C03	CACGATGAT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW12	BY4741	"S1.R:  S. cerevisiae, biol rep 1, 42C 10 min + 30C 20min"	27/10/15	Tag12	C04	CATCTGTAT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW13	BY4741	"S2.30: S. cerevisiae, biol rep 2, 30C"	27/10/15	Tag13	C05	CCGCGGGAT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW14	BY4741	"S2.42: S. cerevisiae, biol rep 2, 42C 10 min"	27/10/15	Tag14	C06	CGACTTGGT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW15	BY4741	"S2.46: S. cerevisiae, biol rep 2, 46C 10 min"	27/10/15	Tag15	C07	CGATCCAGT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW1	EW16	BY4741	"S2.R:  S. cerevisiae, biol rep 2, 42C 10 min + 30C 20min"	27/10/15	Tag16	C08	CGCCAGACT	P7_B3	CATAGCGA	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW17	Y-7560	"O1.38: O. parapolymorpha, biol rep 1, 38C"	27/10/15	Tag17	E01	CGTGGTAAT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW18	Y-7560	"O1.48: O. parapolymorpha, biol rep 1, 48C 10 min"	27/10/15	Tag18	E02	CTGGTTCAT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW19	Y-7560	"O1.52: O. parapolymorpha, biol rep 1, 52C 10 min"	27/10/15	Tag19	E03	CTGTAGGGT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW20	Y-7560	"O1.R:  O. parapolymorpha, biol rep 1, 48C 10 min + 38C 20min"	27/10/15	Tag20	E04	CTTGGGCCT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW21	Y-7560	"O2.38: O. parapolymorpha, biol rep 2, 38C"	27/10/15	Tag21	E05	GATGGCTCT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW22	Y-7560	"O2.48: O. parapolymorpha, biol rep 2, 48C 10 min"	27/10/15	Tag22	E06	GCAGTTACT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW23	Y-7560	"O2.52: O. parapolymorpha, biol rep 2, 52C 10 min"	27/10/15	Tag23	E07	GCCCTCCGT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
EW2	EW24	Y-7560	"O2.R:  O. parapolymorpha, biol rep 2, 48C 10 min + 38C 20min"	27/10/15	Tag24	E08	GCCGAGGGT	P7_B4	CAGGAGCC	5/11/15	151209_K00242_0019_AH3JLVBBXX-DAD-EWL
```