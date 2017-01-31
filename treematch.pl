use strict;
use warnings;

my $plantfile = "plant_names.txt";
#open(my $pf, '<:encoding(UTF-8)', $plantfile) or die "Could not open file '$plantfile' $!";

my $treefile = "littletrees.txt";
open(my $tf, '<:encoding(UTF-8)', $treefile)
or die "Could not open file '$treefile' $!";

my @treematches;

while (my $tree = <$tf>) {
chomp $tree;
	
	open(my $pf, '<:encoding(UTF-8)', $plantfile) or die "Could not open file '$plantfile' $!";
	while (my $plant = <$pf>) {
		#print "$tree\n";
		if ($plant =~ /$tree/) {
			push @treematches, "$plant";
		}
	}
	close $pf;
#print "$tree\n";
}

sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}

my @filtered = uniq(@treematches);

open(my $fh, '>', 'treematches.txt');
print $fh "@filtered\n";
close $fh;

print "@filtered\n";