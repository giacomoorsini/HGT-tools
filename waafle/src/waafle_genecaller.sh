#!/bin/bash

#SBATCH --job-name=waafle_genecall
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --mem=2G
#SBATCH --time=08:00:00

#this script contains the waafle_genecaller command and the instruction to send it as a job to slurm
SECONDS=0
source config.sh

#waafle_genecaller command
waafle_genecaller --gff $GCALLFINAL"/genecall_$SLURM_ARRAY_TASK_ID.gff" $SEARCHFINAL"/search_$SLURM_ARRAY_TASK_ID.blastout" 
if [ $? -eq 0 ]; then
   echo "Job executed succesfully"
   #elapsed time
    duration=$SECONDS
    echo "Elapsed Time: $SECONDS seconds"
    echo "$(($duration / 3600)) hours and $((($duration % 3600)/60)) minutes elapsed."
    #echo "scale=2 ; $SECONDS / 3600" | bc
    echo "$((SECONDS/3600))h $(((SECONDS/60)%60))m $((SECONDS%60))s"
else
   echo "Job failed"
fi
