use strict;
use warnings;

my $filename = "plant_names.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
or die "Could not open file '$filename' $!";
while (my $row = <$fh>) {
chomp $row;
$row =~ s/[{|}]+/ /g;
#$row =~ s/["\s]//g;

print "$row\n"

#;
}