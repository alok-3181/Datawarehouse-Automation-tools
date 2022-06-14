#!/usr/bin/tpython
import os
import sys
import csv
sourcefile = sys.argv[1]
targetfile = sys.argv[2]
ofile = open(targetfile, "ab")
writer = csv.writer(ofile, dialect='excel', delimiter=',')
list=[]
file_reader = open(sourcefile, "r")
for row in file_reader:
		row=row.replace("|",",")
		row=row.strip("\n")
		list.append(row)
		writer.writerows([x.split(',') for x in list])
		list=[]
file_reader.close()
ofile.close()