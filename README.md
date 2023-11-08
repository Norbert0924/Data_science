# NLP Project
## data source:  https://zenodo.org/records/3271522


### Proppy Corpus 


The corpus contains 52k articles from 100+ news outlets. Each article is labeled as either “propagandistic” (positive class) or “non-propagandistic” (negative class). The labeling was done indirectly using a technique known as distant supervision, i.e. an article is considered propagandistic if it comes from a news outlet that has been labeled as propagandistic by human annotators.

### Data format

We provide the corpus in three tsv files, including training, development, and testing partitions.
The data is tab-separated. Each line represents one article, with the following information:


article_text: the text of the article retrieved via newspaper3k package.

event_location: the geographical location - collected from GDELT.

average_tone: measures the impact of the event - collected from GDELT.

article_date: article's publish date - collected from GDELT.

article_ID: GDELT ID , unique among the dataset's articles.

article_URL: the direct URL for the published article in its source website.

MBFC_factuality_label: factuality label for the source from MBFC.

article_URL

MBFC_factuality_label

URL_to_MBFC_page

source_name

MBFC_notes_about_source

MBFC_bias_label

source_URL

propaganda_label


### About
The corpus was downloaded using MBFC metadata to identify propagandistic vs non-propagandistic sources. Specific URLs where then gathered with GDELT and contents downloaded with newspaper3k
 
