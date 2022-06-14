#!/usr/bin/perl
print "Please enter the database.tablename which you want to upload csv/file \n";
my $database_tablename = <STDIN>;
chop($database_tablename);
my $path=`pwd`;
chomp $path;
$cmd1 ="sed -i 's#TS_72258_BASELDB.rupesh_cdc2#$database_tablename#g' $path/bteq_help_fields.txt";
system ("$cmd1");
open(WR1,">$path/database_table.txt");
print  WR1 ("$database_tablename");
close WR1;