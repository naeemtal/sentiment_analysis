We document this as a guide to the script prepared to support a research project on brexit, and thus is prepared accordingly. 

# Classification
In this project, we classify articles from UK Newspapers including The Guardian, Times and Daily Mail during March 2015 to March 2017 into multiple categories related to brexit and climate change. For some categories, we used pre-classified articles from BBC to extract key words relevant to those categories. While for others, we use pre-defined keywords (based on evidence from existing research) to classify into fields and sub-fields. 

# Sentimental Analysis
After classification, we proceed with constructing polarity and subjectivity index based on the headline and few paragraphs of the articles (the length and the number of paragraphs are not homogeneous across news agencies). 

# Frequency of Articles
Lastly, we reshape the data to calculate multiple metrics by calcuting the frequency of articles per category across newspapers including the distribution of different categories across newspapers, the number of articles being published on the same topic by day and by newspaper, and the number of articles per category across the entire time period.

# Main Code Files
1. headline_classifcation.ipynb
2. post_class_stats.do
