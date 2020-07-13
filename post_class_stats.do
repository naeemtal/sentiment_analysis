clear all
set more off
cd "C:\Users\user\Desktop\Summer 2020\Research Assistant\Sandra\Work\Data"

import delimited using "brexit_immigration_full.csv", varnames(1) delimiter(",")

gen date1 = date(date, "DMY")
format date1 %td

gen stories = 1
collapse (sum) stories, by(date newspaper classification brexit)

egen total_stories = sum(stories), by(date newspaper)

outsheet using "news_stats.csv", comma replace
