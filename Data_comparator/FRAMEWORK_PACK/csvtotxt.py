#!/usr/bin/tpython
import os
import sys
import csv
sourcefile = sys.argv[1]
targetfile = sys.argv[2]
ofile = open(sourcefile, "rb")
for row in ofile:
		row = row.replace("\t", "|")
		row = row.strip()
		list.append(row)
ofile.close()
#print list
file_write= open(targetfile,"a")
for row in list:
		file_write.write(row)
		file_write.write("\n")
file_write.close()