#!/usr/bin/env bash
#PBS -q 
#PBS -l walltime=60:00:00
#PBS -l mem=120g
#PBS -l ncpus=28
#PBS -N RunRmodeler

#Set up work environment:
WORKDIR="Rmodeler"
LOG="log_runRepeatModeler.txt"
DATABASE="Pmarg_Rmodeler_DB"
RECOVER="RecoverDir"

#load RepeatModeler
. /repeatmodeler/1.0.11/env.sh

#Run
cd $WORKDIR
RepeatModeler -pa $((${NCPUS}/4)) -engine ncbi -database $DATABASE >& $LOG 2>&1
