#!/bin/bash 
#BATCH --job-name=test
#SBATCH --output=ecoli_slurm_chain_dp.txt

#SBATCH --ntasks=1

#SBATCH --mem=20G
srun /home/sacheung/zsim/build/opt/zsim 2d_chain_dp.cfg
#srun /home/sacheung/zsim/build/opt/zsim 3d_chain_dp.cfg
#srun /home/sacheung/zsim/build/opt/zsim m3d_chain_dp.cfg
