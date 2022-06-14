import csv, xlwt
import os
import sys
sourcefile = raw_input('Enter a sourcefile name:\n ')
targetfile = raw_input('Enter a targetfile name:\n ')
f = open("%s" % sourcefile, 'rb')
reader = csv.reader(f)
workbook = xlwt.Workbook()
sheet = workbook.add_sheet("Sheet 1")
#mystyle = xlwt.easyxf('pattern: pattern solid, fore_colour red')
for rowi, row in enumerate(reader):
	for coli, value in enumerate(row):
		sheet.write(rowi,coli,value)
workbook.save("%s" % targetfile)