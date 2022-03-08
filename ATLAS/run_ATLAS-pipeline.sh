#!/bin/sh
#SBATCH --err ATLAS-pipeline-%A.err
#SBATCH --out ATLAS-pipeline-%A.out
#SBATCH --mem=1G
#SBATCH --time=150:00:00
#SBATCH --job-name=ATLAS-pipeline

##########################################################################################
##########################################################################################
# Author           : Ilektra Schulz
#                    ilektra.schulz@unifr.ch
#
# Script           : Execute the ATLAS-pipeline on SLURM cluster for commit 6df90e7 
#                    as used in "The genomic origins of the world’s first farmers"
#                    A DAG, showing dependencies will also be produced.
#                    For later commits please refer to our wiki page.
#                    https://bitbucket.org/wegmannlab/atlas-pipeline/wiki/Home
#
# Usage            : Execute with bash run_ATLAS-pipeline.sh within atlas-pipeline folder 
#                    To rerun-incomplete, execute with any parameter 
#                    (e.g. bash run_ATLAS-pipeline.sh rerun)
#         
# Required files   : config.yaml containing all paths and thresholds for your analysis
#                    cluster.json for SLURM cluster specifications (see example.cluster.json)
#                    samples.tsv with paths to your inputfiles (see example.samples.tsv)
#
# Date             : 2018-12-15
##########################################################################################
##########################################################################################


echo -e "#Info: There is a newer version online - check out our bitbucket at https://bitbucket.org/wegmannlab/atlas-pipeline/wiki/Home"

rm -f analysis/summaries/*summary.txt
mkdir -p analysis/logs



if [ -z "$1" ]; then
    snakemake --latency-wait 360 -j 100 --cluster-config cluster.json --cluster "sbatch --mem={cluster.mem} --time {cluster.time} --output {cluster.out} --error {cluster.err} --job-name {cluster.name}"
else
	snakemake --rerun-incomplete --latency-wait 360 -j 100 --cluster-config cluster.json --cluster "sbatch --mem={cluster.mem} --time {cluster.time} --output {cluster.out} --error {cluster.err} --job-name {cluster.name}"
fi

snakemake --dag --latency-wait 360 -j 100 --cluster-config cluster.json --cluster "sbatch" | dot -Tsvg > ATLAS-pipeline.svg

###############################################################################
