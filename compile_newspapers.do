clear all
set more off
cd "C:\Users\user\Desktop\Summer 2020\Research Assistant\Sandra\Work\Data"

local myfiles: dir . files "*filters.xlsx"
foreach file of local myfiles{
preserve
clear
import excel using `"`file'"', firstrow

save temp_i, replace
restore
append using temp_i, force
}

outsheet using compiled_news.csv, comma replace

