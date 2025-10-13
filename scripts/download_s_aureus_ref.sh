#!/usr/bin/env bash
set -euo pipefail

# Reference genome directory (relative to script location)
ref_dir="../../refdata/s_aureus_ASM1342v1"

# Create target directory if it doesn't exist
mkdir -p "${ref_dir}"

# Define URLs for reference genome and GTF file
ref_url="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/013/425/GCF_000013425.1_ASM1342v1/GCF_000013425.1_ASM1342v1_genomic.fna.gz"
gtf_url="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/013/425/GCF_000013425.1_ASM1342v1/GCF_000013425.1_ASM1342v1_genomic.gtf.gz"

# Download and rename genome FASTA
echo "Downloading genome FASTA..."
wget -q --show-progress -O "${ref_dir}/s_aureus.fna.gz" "${ref_url}"

# Download and rename GTF annotation
echo "Downloading GTF annotation..."
wget -q --show-progress -O "${ref_dir}/s_aureus.gtf.gz" "${gtf_url}"

# Unzip files
echo "Unzipping files..."
gunzip -f "${ref_dir}/s_aureus.fna.gz"
gunzip -f "${ref_dir}/s_aureus.gtf.gz"

echo "Download and extraction complete."
