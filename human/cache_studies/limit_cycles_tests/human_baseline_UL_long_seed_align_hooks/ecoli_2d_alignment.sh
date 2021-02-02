#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_alignment.txt

#SBATCH --ntasks=1

#SBATCH --mem=20G
srun /home/sacheung/zsim/build/opt/zsim 2d_alignment.cfg
#srun /home/sacheung/zsim/build/opt/zsim 3d_alignment.cfg
#srun /home/sacheung/zsim/build/opt/zsim m3d_alignment.cfg
