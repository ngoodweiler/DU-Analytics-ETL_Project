# DU-Analytics-ETL_Project
#### Group Members - Mark Medernach and Nolan Goodweiler

## Project Proposal
We will compare databases of the Billboard top 100 songs from 1964-2015 and specific song data (like speechiness, acousticness, etc.) from Spotify to identify what composition of song data leads to top ratings.

CSV files, all obtained from Kaggle
Billboard 1964-2015 Songs
19,000 Spotify Songs (song data and song info)

### Libraries/Packages used
- Pandas
- Fuzzy Wuzzy
- python-Levenshtein
- Guide to using Fuzzy Wuzzy here (https://towardsdatascience.com/how-to-do-fuzzy-matching-in-python-pandas-dataframe-6ce3025834a6)

text cleaning to lowercase and removing punctuation https://medium.com/@chaimgluck1/have-messy-text-data-clean-it-with-simple-lambda-functions-645918fcc2fc
https://stackoverflow.com/questions/34293875/how-to-remove-punctuation-marks-from-a-string-in-python-3-x-using-translate
levenshtein process https://kite.com/python/docs/fuzzywuzzy.process.extractOne
