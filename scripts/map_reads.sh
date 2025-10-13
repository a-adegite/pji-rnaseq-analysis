#!/usr/bin/env bash
set -euo pipefail
# directory containing trimmed FASTQ files
input_path="../data/trimmed_reads/"

# directory containing the STAR genome index
genome_index="../../refdata/s_aureus_ASM1342v1/star_index"

# directory to save STAR logs and other output files
log_path="../results/star_logs/"

# directory to save BAM files
bam_path="../data/mapping/"

# create directory if it doesn't exist
mkdir -p "${log_path}" "${bam_path}" 

for file in "${input_path}"*_trimmed_1.fastq.gz
do
    # extract sample name (remove suffix)
    sample="$(basename "${file}" _trimmed_1.fastq.gz)"

    echo "aligning ${sample}..."

    # STAR output prefix goes to logs folder
    prefix="${log_path}${sample}."

    # Align reads to ref genome using STAR
    STAR \
        --runThreadN 9 \
        --genomeDir "${genome_index}" \
        --readFilesIn "${input_path}""${sample}"_trimmed_1.fastq.gz "${input_path}""${sample}"_trimmed_2.fastq.gz \
        --readFilesCommand zcat \
        --outFileNamePrefix "${prefix}" \
        --outSAMtype BAM SortedByCoordinate \
        --outSAMattributes Standard \
        --outSAMunmapped Within 

# STAR BAM output file
    bam_file="${prefix}"Aligned.sortedByCoord.out.bam

    # Move BAM to mapping folder only if it exists
    if [[ -f "${bam_file}" ]]
    then
        mv "${bam_file}" "${bam_path}${sample}.bam"
        echo "Moved BAM to ${bam_path}${sample}.bam"
    else
        echo "Warning: BAM file for ${sample} not found!"
    fi

done

echo "All samples mapped. BAM files: ${bam_path}, gene counts: ${counts_path}"
