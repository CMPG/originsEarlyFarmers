##########################################################################################
##########################################################################################
# Author           : Ilektra Schulz
#                    ilektra.schulz@unifr.ch
#
#                    Execute the ATLAS-pipeline on SLURM cluster for commit 6df90e7 
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
