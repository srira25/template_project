#!/bin/bash
#SBATCH --job-name=run_script
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=10gb
#SBATCH --time=20:00:00
#SBATCH --output=$((INSTALL))/SLURM_output/%x-%A_%a.out
#SBATCH --error=$((INSTALL))/SLURM_output/%x-%A_%a.out
#SBATCH --account=tgu
#SBATCH --mail-type=ALL
#SBATCH --array=0-0
#SBATCH --mail-user={{ cookiecutter.author_email }}

start=$(date +%s)
echo "===== JOB STARTED AT $(date) ====="

module load miniforge
module load gcc/13.3.0
conda activate {{ cookiecutter.conda_env }}
echo $(module list 2>&1)
echo "Script executed from: ${PWD}"
python $((INSTALL))/src/template.py

end=$(date +%s)
runtime=$((end - start))

hours=$((runtime / 3600))
minutes=$(((runtime % 3600) / 60))
seconds=$((runtime % 60))

echo "===== JOB ENDED AT $(date) ====="
echo "===== JOB RUNTIME: ${hours}h ${minutes}m ${seconds}s ====="