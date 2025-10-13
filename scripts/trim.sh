#!/usr/bin/env bash
set -euo pipefail

# Directory containing raw fastq reads
input_path="../data/raw_reads/"

# Directory containing trimmed fastq reads
output_path="../data/trimmed_reads/"

for file in "${input_path}"*_1.fastq.gz
do 
    # strip out suffix (_1.fastq.gz)
    sample=$(basename "${file}" _1.fastq.gz)

    # run fastp
    fastp \
        -i "${input_path}""${sample}"_1.fastq.gz \
        -I "${input_path}""${sample}"_2.fastq.gz \
        -o "${output_path}""${sample}"_trimmed_1.fastq.gz \
        -O "${output_path}""${sample}"_trimmed_2.fastq.gz \
        -q 20 \
        --detect_adapter_for_pe \
        --html "${output_path}""${sample}"_fastp_report.html \
        --json "${output_path}""${sample}"_fastp_report.json

        echo "Completed ${sample}"
done

echo "All samples trimmed"
