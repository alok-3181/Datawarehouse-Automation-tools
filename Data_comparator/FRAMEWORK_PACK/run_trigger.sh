sh menu.sh
perl trigger
Informaticauser@server1 DEV $ cat process_final_upload.pl
print "Please enter the fullpath of file eg /home/id/abc.csv \n";
my $filename_path = <STDIN>;
chop($filename_path);
$cmd2 ="sed -i 's#csvfilewithfullpath#$filename_path#g' final_upload.txt";
$fieldwithcomma =`cat pre_teradata_upld2.txt`;
$fieldwithcolon =`cat pre_teradata_upld1.txt`;
$databasetable =`cat database_table.txt`;
chomp ($fieldwithcomma);
chomp ($fieldwithcolon);
chomp ($databasetable);
$cmd3 ="sed -i 's#fieldwithcomma#$fieldwithcomma#g' final_upload.txt";
$cmd4 ="sed -i 's#fieldwithcolon#$fieldwithcolon#g' final_upload.txt";
$cmd5 ="sed -i 's#database.tablename#$databasetable#g' final_upload.txt";
system ("$cmd2");
system ("$cmd3");
system ("$cmd4");
system ("$cmd5");