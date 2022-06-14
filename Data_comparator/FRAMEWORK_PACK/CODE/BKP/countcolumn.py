import sys
import os
import csv
with open('Difference_csv.csv', 'rb') as f:
	reader = csv.reader(f, delimiter=',', skipinitialspace=True)
	first_row = next(reader)
	num_cols = len(first_row)
	f1 = open( 'color_columns.txt', 'w' )
	f1.write("%d" % num_cols)
	f1.close()
	print num_cols