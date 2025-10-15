#!/usr/bin/env bash
set -euo pipefail

# directory containing BAM files
input_path="../data/mapping/"

# directory containing annotation file (GTF)
gtf_path="../../refdata/s_aureus_ASM1342v1/s_aureus.gtf"

# Directory to store count files
output_path="../results/gene_counts/"

# run featureCounts
featureCounts \
    -T 4 \
    -a "${gtf_path}" \
    -p \
    -g gene_id \
    -t exon \
    -o "${output_path}" \
    "${input_path}"*.bam