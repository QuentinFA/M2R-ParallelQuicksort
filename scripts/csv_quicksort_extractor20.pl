
use strict;

my($line);
my($size);
my($seq,$par,$libc);
print "Size, Type, Time\n" ;
while($line=<>) {
    chomp $line;
    if($line =~/^Size: ([\d\.]*)$/) {
        $size = $1;
        next;
    }
    if($line =~/^Sequential quicksort.*: ([\d\.]*) sec.$/) {
        print "$size, seq, $1\n"; next;
    }
    if($line =~/^Parallel quicksort.*: ([\d\.]*) sec.$/) {
        print "$size, par, $1\n"; next;
    }
    if($line =~/^Built-in quicksort.*: ([\d\.]*) sec.$/) {
        print "$size, bin, $1\n"; next;
    }
}
