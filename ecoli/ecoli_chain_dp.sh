#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_chain_dp.txt
#SBATCH --cpus-per-task=16
#SBATCH --ntasks=1

#SBATCH --mem=5G
srun /home/sacheung/zsim/build/opt/zsim 2d_chain_dp.cfg
srun /home/sacheung/zsim/build/opt/zsim 3d_chain_dp.cfg
srun /home/sacheung/zsim/build/opt/zsim m3d_chain_dp.cfg
