# Developmental programming: Transcriptional regulation of visceral and subcutaneous adipose by prenatal bisphenol-A in female sheep

## Citation Information
Dou JF, Puttabyatappa M, Padmanabhan V*, Bakulski KM*. 2020. Developmental programming: Transcriptional regulation of visceral and subcutaneous adipose by prenatal bisphenol-A in female sheep. Chemosphere. PMID: 32417515. PMCID: PMC7418632. DOI: 10.1016/j.chemosphere.2020.127000

This Github repository contains the data management and analytic scripts to produce the following manuscript:[Developmental programming: Transcriptional regulation of visceral and subcutaneous adipose by prenatal bisphenol-A in female sheep](https://pubmed.ncbi.nlm.nih.gov/32417515/)

## Abstract
**Background**: Bisphenol-A (BPA) exposure is widespread and early life exposure is associated with metabolic syndrome. While visceral adipose tissue (VAT) and subcutaneous adipose tissue (SAT) are implicated in the development of metabolic syndrome, the adipose depot-specific effects of prenatal BPA treatment are poorly understood.
**Objective**: To determine the impact of prenatal BPA exposure on genome-wide gene expression of VAT and SAT depots.
**Methods**: RNA sequencing was performed on SAT and VAT from 21-month old control and prenatal BPA-treated female sheep. Gene expression and pathway differences between SAT and VAT depots with or without prenatal BPA-treatment and the effect of prenatal BPA treatment on each depot were tested.
**Results**: There were 179 differentially expressed genes (padjusted < 0.05, log2-fold change >2.5) between SAT and VAT. Development and immune response pathways were upregulated in SAT, while metabolic pathways were upregulated in VAT. These adipose depot-specific genes and pathways were consistent with prenatal BPA-treatment. In SAT, BPA-treatment resulted in differential expression of 108 genes (78% upregulated with BPA) and altered pathways (immune response downregulated, RNA processing upregulated). In contrast in VAT, BPA-treatment differentially expressed 4 genes and upregulated chromatin and RNA processing pathways.
**Conclusion**: Prenatal BPA-treatment induces adult depot-specific alterations in RNA expression in inflammation, RNA processing, and chromatin pathways, reflecting the diverse roles of SAT and VAT in regulating lipid storage and insulin sensitivity. These adipose tissue transcriptional dysregulations may contribute to the metabolic disorders observed in prenatal BPA-treated female sheep.

## Funding
Research reported in this publication was supported by R01 ES016541 (VP) and P30 ES017885. KB and JD are supported by R01 ES025574, R01 ES025531, R01 MD013299, R01 AG055406, UG3 OD023285, UH3 OD023285, and P30 AG053760. MP is supported via Ruth L. Kirschstein Institutional Training Grant T32 ES007062.

## Scirpt Files
1_fastqc.pbs: using fastqc and multiqc to QC the raw RNA-sequencing data

2_STAR.pbs: Aligning RNA sequencing data to human genome

3.5_QoRTs_plots.R: Saving complied QC plots

3_QoRTs.pbs: Quality control for aligned data

4_featureCounts.pbs: Generating gene counts data

5_fat_sheep_diffexp_ramb.Rmd: differential expression analysis
