Scripts, files, and software for running the DFE inference pipeline.

scripts_data_processing 
    Folder containing scripts that utilize Ancient10X_08-2021_mergeAll102Labelled.vcf (i.e. the 102samples dataset), hg19 build of Ensembl Compara 71 (http://ftp.ensembl.org/pub/release-71/fasta/ancestral_alleles/homo_sapiens_ancestor_GRCh37_e71.tar.bz2), and ANNOVAR exonic_variant_function file to make data dictionaries that dadi can convert into synonymous and nonsynonymous site frequency spectra (SFS).
    Ancient VCF and Ensembl Compara 71 are not included.

scripts_inference
    Folder containing scripts that infer the demography of the synonymous SFS, create a cache of demography model SFS with varying levels of selection to model the distribution of fitness effects (DFE) and infer the DFE of the nonsynonymous SFS.
    Should run 2_make_cache.py on an HPC due to the amount of time it can take.

The scripts folders have READMEs with additional details for the scripts.

software
    Folder containing ANNOVAR, which has the input (Ancient10X_08-2021_mergeAll102Labelled.avinput) and output (Ancient10X_08-2021_mergeAll102Labelled.exonic_variant_function) files for exonic variation, and the developmental build of dadi used for inference.

dadi can be installed via the command from the dadi_devel folder:
python setup.py install
