#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_collecting_minimizers.txt

#SBATCH --ntasks=1

#SBATCH --mem=20G
#srun /home/sacheung/zsim/build/opt/zsim 2d_collecting_minimizers.cfg
#srun /home/sacheung/zsim/build/opt/zsim 3d_collecting_minimizers.cfg
srun /home/sacheung/zsim/build/opt/zsim m3d_collecting_minimizers.cfg
