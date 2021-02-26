Experiment design trial
Aim: Gene expression during heat shock response in two yeast strains 

Yeast is an ideal research model for transcriptome research because they exhibit most of the cellular complexity present in eukaryotes and have relatively compact, accessible genomes.

Reason of strain choice:
1.	SC - conventional yeast strain in the lab work with many available dataset
2.	OP
(1)	grow at higher temperature (only about 10 °C lower than the apparent upper temperature limits for the growth for eukaryotic organisms in general) 
(2)	the most thermotolerant yeast, bigger difference of heat-shock temperature compared with SC
(3)	tightly regulated promoters and a high secretory capability,
(4)	no hyperglycosylation of secreted products so often encountered with Saccharomyces cerevisiae

Important points before heat-shock experiments: 
1. Verifying the strain actually grow as expected
2. Analyzing genome data of the strain 

Heat-shock experimental conditions: 
(a)	Control conditions
•	Strain: Saccharomyces cerevisiae (BY4741)
1.	Temperature: 30 °C (Saccharomyces cerevisiae exhibits optimal growth between 25° and 30°) until the mid-exponential phase (2×107 cells ml-1)
2.	Batches: YPD (2 %, w/v, glucose, 2 % peptone, 1 % yeast extract) 
•	Strain: Ogataea parapolymorpha (DL-1)
1.	Temperature: 40 °C (H. polymorpha achieves optimal growth rates at temperatures around 38–45 °C) until the exponential phase 
2.	Batches: YPD 

(b)	Heat-shock induced condition:
•	Strain: Saccharomyces cerevisiae (BY4741)
1.	Temperature: upshift 30 °C to 39 °C (maximal temperature of growth)
1.	Duration of heat shock: 5 mins & 15 mins (high level of Hsps) & 90 mins (maximal proliferation rates) & 6h (re-enter cell cycle) & 8h (maximal proliferation rates)
•	Batches: preheated YPD (quickly increase temperature)
Strain: Ogataea parapolymorpha (DL-1)
2.	Temperature: upshift 40 °C to 49 °C (Maximal levels of Hsp induction with no thermal death, maximal temperature of growth)
3.	Duration of heat shock: 5 mins & 15 mins (high level of Hsps) & 90min & 6h (re-enter cell cycle) & 8h (maximal proliferation rates)
4.	Batches: preheated YPD 

Saccharomyces cerevisiae strain culture was grown at 30 °C until the mid-exponential phase (2×107 cells ml-1), this culture was equally transferred into 4 flasks. One flask as control, maintained at 30 °C (time point 0). The other 3 flasks were prewarmed in the water bath set at the heat-shock temperature 39 °C. By adding equal volume of pre-heated YPD, 39 °C were immediately reached and kept in three flasks. Samples were taken immediately after 5 mins, 15 mins, 90 mins, 6h and 8h respectively with respect to time point 0. Having 3 flasks for 39 °C was to avoid introducing effects related to culture volume. Similar procedures were carried out in Ogataea parapolymorpha strain, different initial and heat-shock temperatures and durations of heat-shock.

Library preparation methods:
1.	Total RNA was extracted by hot acid phenol extraction. (simple, can be used with multiple samples, and provides a high quality and quantity of RNA that is sufficiently free of contaminating genomic DNA for use in most downstream applications.) https://www.protocols.io/view/hot-phenol-rna-extraction-g89bzz6
2.	RNA quality control to see whether it’s fragmented or not, checking by gel
3.	First strand synthesis: Using RT in converting RNA to cDNA, priming by pre-ligated oligo (ligate an adapter to the 3’end of all RNA by T4-RNA ligase). 
Advantages: 
(a)	same priming sequence for all mRNAs - all be equally primed regardless of their coding sequence. (cannot be achieved by random oligo primers)
(b)	Characterizing the expression of coding RNAs - losing non-polyadenylated RNAs won’t be problems
(c)	Reducing biased enrichment of 3’-ends relative to 5’-ends. (cannot be achieved by oligo-dT primers)
4.	Second strand synthesis: Using RT-synthesized DNA as template, catalyzing by DNA polymerase. Using oligo complementary to the 3’end adaptor used in first strand synthesis. 
5.	Fragmentation of cDNA 
6.	Addition of sequencing adaptor
Approaches:
1.	llumina RNA Prep with Enrichment: uses On-Bead Tagmentation technology followed by simplified, single hybridization to provide an exceptionally fast workflow for RNA-based library preparation and enrichment.
2.	SMARTer Stranded Total RNA-Seq Kit v2 - Pico Input Mammalian: The Illumina TruSeq stranded mRNA Sample Preparation kit (TruSeq) requires abundant starting material while the Takara Bio SMART-Seq v4 Ultra Low Input RNA kit (V4) sacrifices strand specificity. Pico overcome these limitations.
3.	RNATagSeq (chosen in our project): This protocol is for RNA sequencing (RNASeq) library preparation using the RNATagSeq method of Shishkin, et al. (2015). Simultaneous generation of many RNA-seq libraries in a single reaction. Nature Methods, 12(4), 323–325. http://doi.org/10.1038/nmeth.3313 (Broad institute). http://drummondlab.org/protocols/protocol/rnatagseq-library-prep

Sequencing methods:
1.	Platform: Illumina
2.	Depth of sequencing: mix several conditions, run in one lane
3.	Reads/run: 1 × 50 bp (single-end)
4.	No. of reads: 30–60 million reads per sample to look for a more global view of gene expression


Replicates: 
1.	In order to estimate dispersion properly in DESeq2 – 2 replicates for each biological sample
