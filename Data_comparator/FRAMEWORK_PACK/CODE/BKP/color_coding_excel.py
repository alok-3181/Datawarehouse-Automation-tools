import csv
import sys
from xlwt import Workbook, easyxf
book = Workbook()
sheet1 = book.add_sheet('Sheet 1')
cell = easyxf('pattern: pattern solid, fore_colour red')
for row_number in range(0,0,2):
	for column_number in range():
		with open('Difference_csv.csv', 'rb') as f:
		 rows = list(csv.reader(f))
		 if rows[row_number][column_number] == rows[row_number+1][column_number]:
			 text1 = rows[row_number][column_number]
			 text2 = rows[row_number+1][column_number]
			 print rows[row_number][column_number] + " matched " + rows[row_number+1][column_number]
			 sheet1.write(row_number,column_number,text1)
			 sheet1.write(row_number+1,column_number,text2)
		 else:
			print rows[row_number][column_number] + " notmatched " + rows[row_number+1][column_number]
			text3 = rows[row_number][column_number]
			text4 = rows[row_number+1][column_number]
			sheet1.write(row_number,column_number,text3,cell)
			sheet1.write(row_number+1,column_number,text4,cell)
book.save('Compare_result.xls')