my $filename = "access.log";

open(FH, $filename) or die "$!";

my @lines = <FH>;
foreach my $d (@lines) {
  chomp $d;
  if($d =~ /^(\S+)\s(\S+)\s(\S+)\s\[(\S+)\s(\S+)]\s\"(\S+)\s(\S+)\s(\S+)\"\s(\S+)\s(\S+)\s\"(\S+)\"\s\"(.+)\"/){
    #print $1."\t";
    #print $2."\t";
    #print $3."\t";
    
    my @time = split(/:/, $4);
    print $time[0]." ".$time[1].":00:00"."\t";
    #print $5."\t";
    
    print $6."\t";
    print $7."\t";
    #print $8."\t";
    
    print $9."\t";
    #print $10."\t";
    
    #print $11."\t";
    print $12;
    print "\n";
  }else{
    print "ERROR >>> ".$d."\n";
  }
}
close(FH);

