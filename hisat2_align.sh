#!/bin/bash
#SBATCH -A snic2017-7-315
#SBATCH -p core
#SBATCH -n 12
#SBATCH -t 100:00:00
#SBATCH -J hisat2_align1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

#Modules
module load bioinfo-tools
module load HISAT2/2.1.0
module load samtools

#Your commands
hisat2 -q -x /proj/uppstore2017220/applied_bioinformatics/2_run_programs/hisat2/grch38_snp/genome_snp -1 /proj/uppstore2017220/applied_bioinformatics/1_data/adams_data/NA10860_nano_R1.fastq.gz -2 /proj/uppstore2017220/applied_bioinformatics/1_data/adams_data/NA10860_nano_R2.fastq.gz | \
tee >(samtools flagstat -> hisat2_output.flagstat) | \
samtools sort -O BAM | \
tee hisat2_output1.bam | \
samtools index - hisat2_output1.bam.bai
