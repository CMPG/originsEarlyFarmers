#################################################################################################################################
Input Files for the demographic inference with fastsimcoal2 of "The genomic origins of the world’s first farmers" project
    © Nina Marchi
    All steps are described in the STAR Methods
#################################################################################################################################

* Parameters estimate for the six different panels *
For each model of the six panels (described in Table S6 and Supp. Table 4), are provided the files necessary to run the parameters estimate with the command:
	fsc -t xxx.tpl -n500000 -d -e xxx.est -M -L50 -q -C5 --multiSFS --logprecision 18 -c1 -B1
- xxx.tpl (i.e. template file for the tested model xxx)
- xxx.est (i.e. a file where the distributions of the parameters described in the .tpl are fully specified)
- xxx_DSFS.obs (i.e. the observed multiSFS of the populations included in the model xxx)


* Likelihood comparison *
Are provided the files used to obtain the distributions of likelihood per model with the command:
	fsc -i xxx_maxL.par -R100 -n10000000 -d -u -C5 --logprecision 18 -q
- xxx_maxL.par (i.e. the .par file where the estimated parameters have been replaced by their ML values for the model xxx)


* Confidence Interval *
For the model with the best likelihood per panel, are provided files necessary to obtain the confidence intervals around ML parameter point estimates via a parametric bootstrap approach with the command:
	fsc -i xxx_boot.par -n100 -j -d -s0 -x –I -q -u
- xxx_boot.par (i.e. xxx_maxL.par in which the number of individual loci equal the number of SFS entries in xxx_DSFS.obs/100)
- xxx.pv (i.e. all the values of the simple parameters that were estimated in the best run of model xxx)



* IV-Final Model *
- FinalModel.par: the complex historical scenario including the ML parameter values of the best models for the 6 panels, corresponding to what is described in Fig. 3
- FinalModel.xlsx: to explicit the different events of the scenario ("Description" column) as well as to show in which panel were the values taken ("Source" column) and who are the additional ancestral populations added to the sampled ones (in grey)

