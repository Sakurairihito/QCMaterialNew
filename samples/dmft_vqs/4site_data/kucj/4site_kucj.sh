#!/bin/bash
#SBATCH -p defq
#SBATCH -n 4
#SBATCH -J uccgsd_dimer_tau_plus
#SBATCH -o stdout.%J
#SBATCH -e stderr.%J

module load openmpi/3.1.5/gcc-9.3.0

echo $OMP_NUM_THREADS > output-np$SLURM_NTASKS
echo $SLURM_NTASKS >> output-np$SLURM_NTAsSKS
julia --version >> output-np$SLURM_NTASKS
mpirun -np $SLURM_NTASKS julia --project=@. 4site_kucj.jl >> output-np$SLURM_NTASKS-kucj-sparse-V=0.5-k3-debug8