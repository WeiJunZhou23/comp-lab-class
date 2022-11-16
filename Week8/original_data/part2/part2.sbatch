#!/bin/bash
#SBATCH --job-name=run-lmp
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8
#SBATCH --mem=8GB
#SBATCH --time=24:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for i in 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5
do
  mpirun lmp -var density $i -in 3dWCA.in -log LOGFILE.log
done

