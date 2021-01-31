#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_3d_64.txt

#SBATCH --ntasks=1

#SBATCH --mem=15G
#srun /home/sacheung/zsim/build/opt/zsim 2d_baseline.cfg
srun /home/sacheung/zsim/build/opt/zsim 3d_64.cfg
#srun /home/sacheung/zsim/build/opt/zsim m3d_baseline.cfg
