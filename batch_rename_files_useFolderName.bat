:: Batch in windows to rename files under folders
:: example:
:: folder1
:: |-- file1.doc
:: change file1.doc to folder1.doc, and move to somewhere
:: Author: csoftcn
:: May 2020
:: *****************

dir /ad /b > list.txt
for /f %%d in (list.txt) do ( 
echo working in %%d
copy /b %%d\*.* %%d.doc
)
del list.txt