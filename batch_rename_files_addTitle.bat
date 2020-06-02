:: Batch in windows to rename files，add same style titles
:: example:
:: foler
:: |-- file1.ppt
:: |-- file2.ppt
:: change file1.ppt to file1_title.ppt, file2.ppt to file2_title.ppt
:: save as ANSI file if using Chinese
:: can not deal with filename with Spaces
:: Author: csoftcn
:: May 2020
:: *****************

dir *.pptx /b > list.txt
for /f %%f in (list.txt) do ( 
echo working in "%%f"
rename %%f  国潮风系列PPT模板_%%f
)
del list.txt