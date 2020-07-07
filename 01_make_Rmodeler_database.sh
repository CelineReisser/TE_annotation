#!/usr/bin/env bash
#PBS -q 
#PBS -l walltime=20:00:00
#PBS -l mem=30g
#PBS -N BuildRmodelerDB

#Set up environment:

WORKDIR=""
LOG="log_makeblastdb.txt"
OUTDIR="Rmodeler"
OUTPUT="Pmarg_Rmodeler_DB"
QUERY="genome.fasta"
DB_TYPE=nucl

cd $WORKDIR

#load Repeat Modeler environment
. /repeatmodeler/1.0.11/env.sh

#Create
BuildDatabase -name $OUTPUT -engine ncbi $QUERY > BuildDatabase.e${PBS_JOBID%.*} 2>&1
