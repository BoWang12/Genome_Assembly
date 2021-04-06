source ~/miniconda3/bin/activate EDTA
export PATH="/sonas-hs/ware/hpc/home/bwang/miniconda3/bin:$PATH"
perl /sonas-hs/ware/hpc/home/bwang/EDTA/EDTA_raw.pl --genome /sonas-hs/ware/hpc/home/bwang/EDTA/BTX623/Sbicolor_313_v3.0.fa --species others --type helitron --threads 8 -repeatmasker /sonas-hs/ware/hpc_norepl/data/programs/RepeatMasker/ 
