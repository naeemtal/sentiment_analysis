clear all
set more off
cd "C:\Users\user\Desktop\Summer 2020\Research Assistant\Sandra\Work\Data"

import delimited using "compiled_news.csv", varnames(1) delimiter(",")

keep headline newspaper date text

order date, last

drop text

outsheet using "clean_compiled_news.csv", comma replace

* had to manually fix one entry when ran on python -- need to fix this issue
* similar issues arise with creating this csv file without dropping text -- would need at some point
