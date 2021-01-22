#!/bin/bash 
#SBATCH --job-name=m3d_64
#SBATCH --output=ecoli_slurm_m3d_64.txt

#SBATCH --ntasks=1

#SBATCH --mem=15G
#srun /home/sacheung/zsim/build/opt/zsim 2d_baseline.cfg
#srun /home/sacheung/zsim/build/opt/zsim 3d_baseline.cfg
srun /home/sacheung/zsim/build/opt/zsim m3d_64.cfg
