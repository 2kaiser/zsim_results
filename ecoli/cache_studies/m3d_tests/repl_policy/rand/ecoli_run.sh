#!/bin/bash

sbatch ecoli_m3d_baseline.sh
sbatch ecoli_m3d_collecting_minimizers.sh
sbatch ecoli_m3d_collecting_seed_hits.sh
sbatch ecoli_m3d_chain_dp.sh
sbatch ecoli_m3d_alignment.sh
