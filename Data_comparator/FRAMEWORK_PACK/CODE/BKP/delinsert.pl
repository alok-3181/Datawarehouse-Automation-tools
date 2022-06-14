#!/usr/bin/perl
use strict;
use warnings;
print "Enter teh field position filename\n";
my $filename = <STDIN>;
print "Enter the unzip .gz text file to insert delimiter in \n";
my $convertfile = <STDIN>;
chomp $filename;
chomp $convertfile;
open(my $fh, '<:encoding(UTF-8)', $filename)
or die "Could not open file '$filename' $!";
while (my $row = <$fh>) {
chomp $row;
`sed -i 's/./&|/$row' $convertfile`;
print "$row\n";
}
#`cat datatest.txt`;