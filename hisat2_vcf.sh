#!/bin/bash
#SBATCH -A snic2017-7-315
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 100:00:00
#SBATCH -J hisat2_vcf1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

#Modules
module load bioinfo-tools
module load HISAT2/2.1.0
module load samtools
module load bcftools
module load python/2.7.15

#Your commands
samtools mpileup -uf /proj/uppstore2017220/applied_bioinformatics/1_data/Homo_sapiens.GRCh38.dna.alt.fa hisat2 _output1.bam | bcftools view -bvcg -> output1.raw.bcf
