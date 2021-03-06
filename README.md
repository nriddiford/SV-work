# Tools for discovering structural variants in WGS data

This repository contains protocols that I am developing for various tools I am using to identify structural variants in WGS data.

# Protocols:
* **SVP callers**
  * [VCFTools](VCFtools/VCFtools.md)
  * [Varscan](Varscan/Varscan.md)
  * [Freebayes](Freebayes/Freebayes.md)
* **SV callers**
  * [SVDetect](SVDetect/SVDetect.md)
  * [LUMPY](LUMPY/LUMPY.md)
  * [Delly](Delly/Delly.md)
* **CNV callers**
  * [CNV-Seq](CNV-Seq/CNV-Seq.md)
  * [Control-FREEC](Control-FREEC/Control-FREEC.md)

# Table of contents
* [Background](#background)
* [Types of structural variation](#types-of-structural-variation)
  * [Copy number variation](#copy-number-variation)
* [Overview of detection strategies](#overview-of-detection-strategies)
  * [Paired-end](#paired-end)
  * [Split-read](#split-read)
  * [Read-depth](#read-depth)
  * [Assembly](#assembly)
* [Identification of structural variation](#identification-of-structural-variation)
  * [CNVs](#cnvs)


# Background
Most of the following heavily borrows from [Tattini et al (2015)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4479793/)

Structural variants (SVs) are genomic rearrangements generally affecting more then 50 bp. These can include balanced (where a portion of the genome is moved with no net change in bps) and unbalanced (resulting in an increase/decrease in bps) events and include:
* Deletions
* Insertions
* Inversions
* Mobile-element transpositions
* Translocations
* Tandem repeats
* Copy number variants (CNVs)

# Types of structural variation

## Copy number variation 

See Zhao et al 2015(1)
CNV refers to a type of intermediate-scale SVs with copy number changes involving a DNA fragment that is typically greater than 1Kb and less than 5Mb. In humans it is estimated that ~ 12% of the genome is subject to copy number change. Generally, CNVs include deletions, insertions, and duplications of genomic regions. 


# Overview of detection strategies
So far, the NGS-based CNV detection methods can be categorized into five different strategies, including:
* Paired-end mapping (PEM)
* Split read (SR)
* Read depth (RD)
* De novo assembly of a genome (AS)
* Combination of the above approaches (CB)

## Paired-end
Paired-end mapping (PEM) strategy detects SVs/CNVs through discordantly mapped reads. A discordant mapping is produced if the distance between two ends of a read pair is significantly different from the average insert size.

## Split read
Split read (SR)-based methods use incompletely mapped read from each read pair to identify small SVs/CNVs.

## Read depth
Read depth (RD) approach detects CNVs by counting the number of reads mapped to each genomic region. In the figure, reads are mapped to three exome regions.

## Assembly
Assembly (AS)-based approach detects CNVs by mapping contigs to the reference genome.

## Combined
Combinatorial approach combines RD and PEM information to detect CNVs.

# Identification of structural variation

## CNVs 



1.	Zhao M, Wang Q, Wang Q, Jia P, Zhao Z. Computational tools for copy number variation (CNV) detection using next-generation sequencing data: features and perspectives. BMC Bioinformatics. 2013
