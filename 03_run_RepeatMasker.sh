#!/usr/bin/env bash
#PBS -q 
#PBS -l walltime=20:00:00
#PBS -l mem=30g
#PBS -l ncpus=10
#PBS -N RunRMasker

#Set up environment:
WORKDIR="Rmodeler"
LOG="log_runRepeatMasker.txt"
DATABASE="Pmarg_Rmodeler_DB"
OUTDIR="RepeatMasker_with_xsmall"
mkdir -p $OUTDIR

#load RepeatModeler
#. /appli/bioinfo/repeatmodeler/1.0.11/env.sh

#Run
cd $WORKDIR
RepeatMasker -dir $OUTDIR -pa 8 -xsmall -lib ./consensi.fa.classified ./genome.fasta 1> $LOG 2>&1
