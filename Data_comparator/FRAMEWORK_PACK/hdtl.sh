echo "3 parameter required for this script"
echo "1st Parameter Business date DDMMYYYY: $1"
echo "2nd Parameter Chopped File name : $2"
echo "Customer File Name: $3"
#. ./header.sh $1
Intial=00FDLH0100
#Business_Date=$1
End=01
echo "$Intial $1$End" >header_$1.dat
#. ./trailer.sh $1 $2
IntTr=99FDLH010
#BUS_DATE=$1
TEMP_NUM=2
REC_COUNT_1=`cat ./$2| wc -l`
REC_COUNT_2=2
REC_COUNT_3=`expr $REC_COUNT_1 + $REC_COUNT_2`
#echo $REC_COUNT_1
#echo $REC_COUNT_3
REC_COUNT_4=00000000
#REC_COUNT=`expr $REC_COUNT_3 + $REC_COUNT_4`
REC_COUNT=`printf "%010d" $REC_COUNT_3`
#echo $REC_COUNT
#echo "$REC_COUNT$REC_COUNT_4"
echo "99FDLH010$1$REC_COUNT$REC_COUNT_4" >trailer_$1.dat
#. ./complete_file.sh $1 $2 $3
sed -i 's/|/|ÇÞ|/g' $2 >$3_Temp_$(date +'%m%d%y')
sed -i 's|\([0-9][0-9][0-9][0-9]\)-\([0-1][0-9]\)-\([0-3][0-9]\)|\3.\2.\1|g' $3_Temp_$(date +'%m%d%y')
sed -i 's/null//g' $3_Temp_$(date +'%m%d%y')
cat header_$1.dat>>FINAL_RDFP_$3_$1.dat
cat $3_Temp_$(date +'%m%d%y')>>FINAL_RDFP_$3_$1.dat
cat trailer_$1.dat>>FINAL_RDFP_$3_$1.dat
rm -f  header_$1.dat trailer_$1.dat $3_Temp_$(date +'%m%d%y')