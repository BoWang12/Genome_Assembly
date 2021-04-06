#!/usr/bin/perl -w

open A,"$ARGV[0]"||die $!;
%reads=<A>;
foreach $id(keys%reads){
    $seq=$reads{$id};
    chomp($seq);
     $len=length($seq);
   if($len>4999){
    print "$id$seq\n";}
 }

close A;

