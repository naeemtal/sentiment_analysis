clear all
set more off
cd "C:\Users\user\Desktop\Summer 2020\Research Assistant\Sandra\Work\Data"

* HEADLINE VERSION
import delimited using "final_brexit_head.csv", varnames(1) delimiter(",")

keep date head* newspaper text* pol* subj*

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1
drop if date1 ==.

destring pol* subj*, replace

gen stories = 1
collapse (sum) stories (mean) polarityheadline subjectivityheadline, by(date newspaper headline_classification)

egen total_stories = sum(stories), by(date newspaper)

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1 newspaper headline_classification


outsheet using "news_stats_head.csv", comma replace

collapse (sum) stories, by(date headline_classification)
egen total_stories = sum(stories), by(date)

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1 headline_classification

outsheet using "news_stats_head_all.csv", comma replace

* TEXT VERSION
import delimited using "final_brexit_text.csv", varnames(1) delimiter(",") clear

keep date head* newspaper text* pol* subj*

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1
drop if date1 ==.

destring pol* subj*, replace

gen stories = 1
collapse (sum) stories (mean) polaritytext subjectivitytext, by(date newspaper text_classification)

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1 newspaper text_classification

egen total_stories = sum(stories), by(date newspaper)

outsheet using "news_stats_text.csv", comma replace

collapse (sum) stories, by(date text_classification)
egen total_stories = sum(stories), by(date)

gen date1 = date(date, "DMY")
format date1 %td
order date1, first
sort date1 text_classification


outsheet using "news_stats_text_all.csv", comma replace
