#!/bin/bash  
#SBATCH -A snic2017-7-315
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 80:00:00 
#SBATCH -J hisat2_build
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

#Modules
module load bioinfo-tools
module load HISAT2/2.1.0

#Your commands
hisat2-build --snp /proj/uppstore2017220/applied_bioinformatics/1_data/00-common_all.vcf.gz /proj/uppstore2017220/applied_bioinformatics/2_run_programs/hisat2/hs38DH_new.fa /proj/uppstore2017220/applied_bioinformatics/2_run_programs/
