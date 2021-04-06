#!/usr/bin/perl -w

@all=glob("x*");

foreach $file(@all){
   open A, "$file"||die $!;
   open B,">$file.sh"||die $!;

 print B "/sonas-hs/ware/hpc/home/bwang/software/MUMmer3.23/nucmer --mum -c 1000 -prefix $file.btx623.mm ../TX2783/TX2783.fa $file";

 system "qsub \-pe threads 1 \-l m_mem_free=70G \-cwd $file.sh" ;

 close A;
 close B;
 }
