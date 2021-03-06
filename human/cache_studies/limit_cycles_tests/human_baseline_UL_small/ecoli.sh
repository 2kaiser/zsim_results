#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_baseline.txt
#SBATCH --cpus-per-task=16
#SBATCH --ntasks=1

#SBATCH --mem=5G
srun /home/sacheung/zsim/build/opt/zsim 2d_example.cfg
srun /home/sacheung/zsim/build/opt/zsim 3d_example.cfg
srun /home/sacheung/zsim/build/opt/zsim m3d_example.cfg
