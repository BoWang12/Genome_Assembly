#!/usr/bin/perl -w

@all=glob("*.ntref");

foreach $file(@all){   
   @aa=split(/\./,$file);
   system "rm \-rf $aa[0].sh*";
   

   #open A, "$file"||die $!;
   
   open B,">$aa[0].sh"||die $!;

 print B "/sonas-hs/ware/hpc/home/bwang/software/MUMmer3.23/nucmer -mumreference --noextend -prefix $aa[0].2Mo17.mm Mo17.fa $aa[0]";

 system "qsub \-pe threads 1 \-l m_mem_free=80G \-cwd $aa[0].sh" ;

 #close A;
 close B;
 }
