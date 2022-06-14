#!/usr/bin/perl
use strict;
use warnings;
print "Enter the filename you want to drop column from, ensure have a backup of old file\n";
my $filename = <STDIN>;
chomp $filename;
print "Enter teh number of columns you want to replace\n";
my $limit = <STDIN>;
chomp $limit;
my @arr1;
while (my @arr < $limit) {
   print "Enter the position number\n";
	my $num = <STDIN>;
	chomp $num;
	push @arr, $num;
push(@arr1, @arr);
$limit--;
}
open(WR,"> drop_columns.txt");
print WR join ",", @arr1;
close WR;
print join ",", @arr1;
print "\n";
my $del_col=`cat drop_columns.txt`;
chomp $del_col;
my $cmd1 ="cut --complement -f $del_col -d '|' $filename > $filename.chopped_file.txt";
system(" $cmd1 ");
print " result fiel is $filename.chopped_file.txt\n";