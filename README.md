# RNA-seq Analysis of Acute and Chronic Periprosthetic Joint Infection (PJI) Isolates
This project investigates the transcriptional differences between acute and chronic Periprosthetic Joint Infection (PJI) isolates using RNA-seq data. The goal is to identify differentially expressed genes (DEGs) and long non-coding RNAs (lncRNAs) that may contribute to infection persistence, biofilm formation, and host–pathogen interactions.

## 🔧 Pipeline Overview

The pipeline processes paired-end RNA-seq reads to identify differentially expressed lncRNAs and mRNAs between ECFCs from SCD patients with and without ischemic stroke.  

1. **Data Acquisition** 
2. **Quality Control** 
3. **Read Trimming** 
4. **Read Alignment** 
5. **Quantification** 
6. **Differential Expression Analysis** 
7. **Annotation** 
8. **Functional Enrichment** — Use clusterProfiler to perform GO and KEGG pathway enrichment for correlated coding genes.  
9. **Visualization**

## 🛠️ Tools & Dependencies

- Bash (Workflow scripting and automation)
- [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [Fastp](https://github.com/OpenGene/fastp)
- [MultiQC](https://seqera.io/multiqc/)
- [STAR](https://github.com/alexdobin/STAR)
- [Samtools](http://www.htslib.org/)
- [Subread (featureCounts)](https://subread.sourceforge.net/featureCounts.html)
- [R 4.5.1](https://cran.ma.imperial.ac.uk/)
- [RTools 4.5](https://cran.r-project.org/bin/windows/Rtools/)
- [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html)
- [Tidyverse](https://www.tidyverse.org/)
- [pheatmap](https://cran.r-project.org/web/packages/pheatmap/)
- [ComplexHeatmap](https://bioconductor.org/packages/release/bioc/html/ComplexHeatmap.html)
- [biomaRt](https://bioconductor.org/packages/release/bioc/html/biomaRt.html)
- [clusterProfiler](https://bioconductor.org/packages/release/bioc/html/clusterProfiler.html)

---

## 📦 Data Access

Due to GitHub file size restrictions, input FASTQ files and some intermediate outputs are **not included** in this repository.

To obtain the required data:

- Run `scripts/download_data.sh` which fetches all required files from public repositories, or  
- Manually download them using the accession numbers or URLs referenced inside the script

---
