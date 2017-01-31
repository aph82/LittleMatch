use strict;
use warnings;

my $filename = "littletrees.txt";

open(my $fh, '<:encoding(UTF-8)', $filename)
or die "Could not open file '$filename' $!";
open(MYFILE, '>littletrees.txt');
while (my $row = <$fh>) {
chomp $row;
my @wordarray = split(' ', $row);
my $binom = $wordarray[0] . ' ' . $wordarray[1];
print MYFILE "$binom\n";

}
close(MYFILE);