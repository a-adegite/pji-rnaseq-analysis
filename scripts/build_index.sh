#!/usr/bin/env bash
set -euo pipefail

# directory containing reference genome
ref_genome="../../refdata/s_aureus_ASM1342v1/s_aureus.fna"

# directory containing generated genome index
genome_index="../../refdata/s_aureus_ASM1342v1/star_index"

# directory containing annotation file (GTF)
ref_gtf="../../refdata/s_aureus_ASM1342v1/s_aureus.gtf"

# create directory if it doesn't exist
mkdir -p "${genome_index}"

# Generate genome index using STAR
STAR \
    --runThreadN 9 \
    --runMode genomeGenerate \
    --genomeDir "${genome_index}" \
    --genomeFastaFiles "${ref_genome}" \
    --sjdbGTFfile "${ref_gtf}" \
    --sjdbOverhang 149 \
    --genomeSAindexNbases 9
