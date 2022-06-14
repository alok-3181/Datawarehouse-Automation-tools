#!/usr/bin/perl
print "
Select from below options to setup id and password:\n
1. First time userid setup (enter ur linux userid, ensure you place the unzip tar files at home folder)
2. Teardata
3. DB2
4. Oracle
5. Change default value of RDSA for DB2
6. Oracle for 2 different source or database
\n";
my $useropt = <STDIN>;
chomp $useropt;
 if ($useropt eq 0){
	exit 0;
	}
elsif($useropt ==1){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/BKP/oraclerun.sh oraclerun1.sh .profile csvtoxls.sh count.sh";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd";
my $cmd1="cd $pwd/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "Enter the your linuxid eg syssitdmmmmuuu \n";
my $linuxid = <STDIN>;
chomp $linuxid;
`sed -i 's/userid/$linuxid/g' .profile oraclerun.sh oraclerun1.sh csvtoxls.sh count.sh`;
print "Updated Sucessfully\n";
}
elsif($useropt ==2){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/BKP/template_bteq_help_fields.txt pre_upload_template1.txt bteq_help_fields.txt";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd";
my $cmd1="cd $pwd/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "Enter the your Teradataid eg Informaticauser \n";
my $teradata_id = <STDIN>;
chomp $teradata_id;
print "Enter the your Teradata Password eg Informaticauser \n";
my $teradata_pass = <STDIN>;
chomp $teradata_pass;
`sed -i 's/Teradataid/$teradata_id/g' template_bteq_help_fields.txt pre_upload_template1.txt bteq_help_fields.txt`;
`sed -i 's/Teradatapassword/$teradata_pass/g' template_bteq_help_fields.txt pre_upload_template1.txt bteq_help_fields.txt`;
my $BKPPATH1="$pwd"."/CODE/BKP/td_pre.txt";
my $BKPPATH2="$pwd"."/CODE/BKP/td2.txt";
my $BKPPATH3="$pwd"."/CODE/BKP/td.txt";
chomp $BKPPATH1;
chomp $BKPPATH2;
chomp $BKPPATH3;
my $copyrun1="cp -rf $BKPPATH1 $pwd/CODE";
my $copyrun2="cp -rf $BKPPATH2 $pwd/CODE";
my $copyrun3="cp -rf $BKPPATH3 $pwd/CODE";
my $cmd11="cd $pwd/CODE/BKP";
system (" $cmd11 && $copyrun1 ");
system (" $cmd11 && $copyrun2 ");
system (" $cmd11 && $copyrun3 ");
print "$copyrun1\n";
`sed -i 's/Teradataid/$teradata_id/g' $pwd/CODE/td_pre.txt $pwd/CODE/td2.txt $pwd/CODE/td.txt`;
`sed -i 's/Teradatapassword/$teradata_pass/g' $pwd/CODE/td_pre.txt $pwd/CODE/td2.txt $pwd/CODE/td.txt`;
print "Updated Sucessfully\n";
}
elsif($useropt ==3){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/CODE/BKP/Data_setup";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd/CODE";
my $cmd1="cd $pwd/CODE/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "Enter the your Mainframeid eg bzyan1 \n";
my $mainframe_id = <STDIN>;
chomp $mainframe_id;
print "Enter the your Mainframepassword:
(Important:password with spcial character '@' is not supported)\n";
my $mainframe_pass = <STDIN>;
chomp $mainframe_pass;
`sed -i 's/mainframeid/$mainframe_id/g' $pwd/CODE/Data_setup`;
`sed -i 's/mainframepassword/$mainframe_pass/g' $pwd/CODE/Data_setup`;
print "Updated Sucessfully\n";
}
elsif($useropt ==4){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/BKP/oracleconnect.py";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd";
my $cmd1="cd $pwd/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "Enter the your Oraclehostname eg abjt.wload.company.co.uk \n";
my $oracle_hostname = <STDIN>;
chomp $oracle_hostname;
print "Enter port number eg 7896:\n";
my $port_no = <STDIN>;
chomp $port_no;
print "Enter servicename eg TPTCVS.wload.company.co.uk\n";
my $service_name = <STDIN>;
chomp $service_name;
print "Enter oracle SID eg TPTCVS.wload.company.co.uk\n";
my $sid_name = <STDIN>;
chomp $sid_name;
print "Enter username eg RO_USER:\n";
my $oracle_user = <STDIN>;
chomp $oracle_user;
print "Enter password:\n";
my $oracle_pass = <STDIN>;
chomp $oracle_pass;
`sed -i 's/hostname/$oracle_hostname/g' oracleconnect.py`;
`sed -i 's/portnumber/$port_no/g' oracleconnect.py`;
`sed -i 's/servicename/$service_name/g' oracleconnect.py`;
`sed -i 's/Oracle_id/$oracle_user/g' oracleconnect.py`;
`sed -i 's/oracle_password/$oracle_pass/g' oracleconnect.py`;
`sed -i 's/oracle_sid/$sid_name/g' oracleconnect.py`;
print "Updated Sucessfully\n";
}
elsif($useropt ==5){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/CODE/BKP/Data_setup";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd/CODE";
my $cmd1="cd $pwd/CODE/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "Enter the SID eg RDSA default is RDSA\n";
my $rdsa_id = <STDIN>;
chomp $rdsa_id;
`sed -i 's/RDSA/$rdsa_id/g' $pwd/CODE/Data_setup`;
print "Updated Sucessfully\n";
}
elsif($useropt ==6){
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/BKP/oracleconnect.py";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd";
my $cmd1="cd $pwd/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "****************Deatils for first oracle database***************\n";
print "Enter the your Oraclehostname eg abjt.wload.company.co.uk \n";
my $oracle_hostname = <STDIN>;
chomp $oracle_hostname;
print "Enter port number eg 7896:\n";
my $port_no = <STDIN>;
chomp $port_no;
print "Enter servicename eg TPTCVS.wload.company.co.uk\n";
my $service_name = <STDIN>;
chomp $service_name;
print "Enter oracle SID eg TPTCVS.wload.company.co.uk\n";
my $sid_name = <STDIN>;
chomp $sid_name;
print "Enter username eg RO_USER:\n";
my $oracle_user = <STDIN>;
chomp $oracle_user;
print "Enter password:\n";
my $oracle_pass = <STDIN>;
chomp $oracle_pass;
`sed -i 's/hostname/$oracle_hostname/g' oracleconnect.py`;
`sed -i 's/portnumber/$port_no/g' oracleconnect.py`;
`sed -i 's/servicename/$service_name/g' oracleconnect.py`;
`sed -i 's/Oracle_id/$oracle_user/g' oracleconnect.py`;
`sed -i 's/oracle_password/$oracle_pass/g' oracleconnect.py`;
`sed -i 's/oracle_sid/$sid_name/g' oracleconnect.py`;
print "Updated for first Oracledb Sucessfully\n";
my $pwd=`pwd`;
`chmod 777 *`;
chomp $pwd;
my $BKPPATH="$pwd"."/BKP/oracleconnect1.py";
chomp $BKPPATH;
my $copyrun="cp -rf $BKPPATH $pwd";
my $cmd1="cd $pwd/BKP";
system (" $cmd1 && $copyrun ");
print "$copyrun\n";
print "****************Deatils for Second oracle database***************\n";
print "Enter the your Oraclehostname eg abjt.wload.company.co.uk \n";
my $oracle_hostname = <STDIN>;
chomp $oracle_hostname;
print "Enter port number eg 7896:\n";
my $port_no = <STDIN>;
chomp $port_no;
print "Enter servicename eg TPTCVS.wload.company.co.uk\n";
my $service_name = <STDIN>;
chomp $service_name;
print "Enter oracle SID eg TPTCVS.wload.company.co.uk\n";
my $sid_name = <STDIN>;
chomp $sid_name;
print "Enter username eg RO_USER:\n";
my $oracle_user = <STDIN>;
chomp $oracle_user;
print "Enter password:\n";
my $oracle_pass = <STDIN>;
chomp $oracle_pass;
`sed -i 's/hostname/$oracle_hostname/g' oracleconnect1.py`;
`sed -i 's/portnumber/$port_no/g' oracleconnect1.py`;
`sed -i 's/servicename/$service_name/g' oracleconnect1.py`;
`sed -i 's/Oracle_id/$oracle_user/g' oracleconnect1.py`;
`sed -i 's/oracle_password/$oracle_pass/g' oracleconnect1.py`;
`sed -i 's/oracle_sid/$sid_name/g' oracleconnect1.py`;
print "Updated for second Oracle db Sucessfully\n";
}
else {
	 print "Incorrect option give correct option\n";
	 my $useroption = <STDIN>;
	 }