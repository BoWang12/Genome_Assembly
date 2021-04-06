#!/usr/bin/perl -w

@all=glob("x*");

foreach $file(@all){
   @name=split(/\./,$file);
   system "mkdir $name[0]";
   system "mv $file $name[0]";
   #system "cd $name[0]";
   #open A, "$file"||die $!;
   open B,">$file.sh"||die $!;

 #print B "/sonas-hs/ware/hpc/home/bwang/software/MUMmer3.23/nucmer -mumreference --noextend -prefix $file.2B73.mm B73.fa $file";
  print B "source /sonas-hs/it/hpc/home/easybuild/lmod-setup.sh\nmodule load foss/2016a\n/usr/bin/time -v ~/software/svmu/svmu ./$file ../../sorghum.fa ../../$name[0] 100 cnv_mode l";
  system "mv $file.sh $name[0]";
  chdir $name[0];
  system "qsub \-pe threads 1 \-l m_mem_free=70G \-cwd $file.sh" ;
  chdir '../';

 #close A;
 close B;
 }
