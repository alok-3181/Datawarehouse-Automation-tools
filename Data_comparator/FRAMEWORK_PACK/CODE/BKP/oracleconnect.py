import cx_Oracle
import csv
import sys
table = raw_input('Enter tablename: ')
host = 'hostname'
port = portnumber
SERVICE_NAME = 'servicename'
login = 'Oracle_id'
passwrd = 'oracle_password'
SID = 'oracle_sid'
dsn = cx_Oracle.makedsn(host, port, SID).replace('SID','SERVICE_NAME')
con = cx_Oracle.connect(login, passwrd, dsn)
cur = con.cursor()
cur.execute('select * from %s' %(table))
row = cur.fetchall()
#print row
c = csv.writer(open("oracle_output.csv","wb"), delimiter="|")
c.writerows(row)
con.close()