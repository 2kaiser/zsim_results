#!/bin/bash 
#SBATCH --job-name=3d_16
#SBATCH --output=ecoli_slurm_3d_16.txt

#SBATCH --ntasks=1

#SBATCH --mem=15G
#srun /home/sacheung/zsim/build/opt/zsim 2d_baseline.cfg
srun /home/sacheung/zsim/build/opt/zsim 3d_16.cfg
#srun /home/sacheung/zsim/build/opt/zsim m3d_baseline.cfg
