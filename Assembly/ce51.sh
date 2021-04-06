export PATH=`cat path` ;

#module load foss/2018b

#/sonas-hs/ware/hpc/home/bwang/software/canu1.5/Linux-amd64/bin/canu -d tx3339.canu -p tx3339 -s canu.new.txt -nanopore-raw ./tx3339.nanopore.fastq genomeSize=770000000 java=/usr/lib/jvm/jre-1.8.0-oracle.x86_64/bin/java gridEngineMemoryOption="-l m_mem_free=MEMORY" maxMemory=640 maxThreads=30 gnuplotTested=true

/sonas-hs/ware/hpc/home/bwang/software/canu_new/Linux-amd64/bin/canu -d ce51canu5000 -p ce51 -s default.txt -nanopore-raw ./ce51.lt5000.reads.fa genomeSize=770000000 java=/usr/lib/jvm/jre-1.8.0-oracle.x86_64/bin/java gridEngineMemoryOption="-l m_mem_free=MEMORY" gridEngineThreadsOption="-pe threads THREADS" maxMemory=200 maxThreads=30 corMaxEvidenceErate=0.15 
