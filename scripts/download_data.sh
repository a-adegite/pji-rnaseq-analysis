#!/usr/bin/env bash
set -euo pipefail

# --------------------------------------------------------------
# Project: Transcriptomic Profiling of Staphylococcus aureus
#          During Acute vs Chronic Phases of PJI
# Dataset: PRJNA867318
# --------------------------------------------------------------
# Naming Convention for RNA-seq Files
#
# Prefixes:
#   A = Acute PJI isolates (aggressive infection phase)
#   C = Chronic PJI isolates (biofilm / persistent infection phase)
#
# Suffixes:
#   _1.fastq.gz = Forward read (Read 1) of paired-end sequencing
#   _2.fastq.gz = Reverse read (Read 2) of paired-end sequencing
# --------------------------------------------------------------
#
# Directory where downloaded FASTQ files will be stored
data_dir="../data/raw_reads/"

# create directory if it doesn't exist
mkdir -p "${data_dir}"

# Chronic PJI samples (C)
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/076/SRR20959676/SRR20959676_1.fastq.gz -o "${data_dir}SRR20959676_C_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/076/SRR20959676/SRR20959676_2.fastq.gz -o "${data_dir}SRR20959676_C_2.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/077/SRR20959677/SRR20959677_1.fastq.gz -o "${data_dir}SRR20959677_C_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/077/SRR20959677/SRR20959677_2.fastq.gz -o "${data_dir}SRR20959677_C_2.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/078/SRR20959678/SRR20959678_1.fastq.gz -o "${data_dir}SRR20959678_C_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/078/SRR20959678/SRR20959678_2.fastq.gz -o "${data_dir}SRR20959678_C_2.fastq.gz"

# Acute PJI samples (A)
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/080/SRR20959680/SRR20959680_1.fastq.gz -o "${data_dir}SRR20959680_A_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/080/SRR20959680/SRR20959680_2.fastq.gz -o "${data_dir}SRR20959680_A_2.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/081/SRR20959681/SRR20959681_1.fastq.gz -o "${data_dir}SRR20959681_A_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/081/SRR20959681/SRR20959681_2.fastq.gz -o "${data_dir}SRR20959681_A_2.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/082/SRR20959682/SRR20959682_1.fastq.gz -o "${data_dir}SRR20959682_A_1.fastq.gz"
curl -L -C - ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR209/082/SRR20959682/SRR20959682_2.fastq.gz -o "${data_dir}SRR20959682_A_2.fastq.gz"

echo "Download complete. All acute (A) and chronic (C) paired-end reads stored in ${data_dir}"