#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_baseline.txt

#SBATCH --ntasks=1

#SBATCH --mem=10G
srun /home/sacheung/zsim/build/opt/zsim 2d_baseline_mapping.cfg
#srun /home/sacheung/zsim/build/opt/zsim 3d_baseline.cfg
#srun /home/sacheung/zsim/build/opt/zsim m3d_baseline.cfg
