#!/bin/bash

sbatch ecoli_baseline.sh
sbatch ecoli_collecting_minimizers.sh
sbatch ecoli_collecting_seed_hits.sh
sbatch ecoli_chain_dp.sh
sbatch ecoli_alignment.sh
sbatch ecoli_baseline_mapping.sh
