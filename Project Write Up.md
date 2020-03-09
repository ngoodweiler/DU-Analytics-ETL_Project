At the end of the week, your team will submit a Final Report that describes the following:

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

We started with essentially two data sets, both in csv format.  The first data set was the Billboard top 100 songs from 1964 through 2015 including the year, the final ranking, artist and song name.  The second was a respostory of 19,000 Spotify songs with artist, song name and album in csv format.  Included in a separate data set were the same Spotify songs with statistics on each track including popularity, arbitrary attributes like aucousticness, danceability, liveness, loudness, etc.  These two data sets only had artist and song names in common, however we found lots of discrepenacy betwen both between the Billboard and Spotify data sets.  Our ultimate goal was to be able to create database in which we can use Spotify attributes to analyze trends in the popularity of songs throughout the last 50 year.  

* **T**ransform: what data cleaning or transformation was required.

The main transformation of our dataset was to utilize various tools and a library called fuzzy wuzzy to create a 'key' table to connect the two sources of data.   In order to accomplish this, we started by converting the csv's into dataframes and creating what we call the fuzzy artist and song name which consists of a trimmed string without punctuation. Once we created clean strings, we fed them through a funtion through fuzzywuzzy called ExtractOne.   A little on fuzzy wuzzy, 

        "There are many methods of comparing string in python. Some of the main methods are:

        -> Using regex
        -> Simple compare
        -> Using difflib
        
        But one of the very easy method is by using fuzzywuzzy library where we can have a score out of 100, that denotes two string are equal by giving similarity index. This article talks about how we start using fuzzywuzzy library.

        FuzzyWuzzy is a library of Python which is used for string matching. Fuzzy string matching is the process of finding strings that match a given pattern. Basically it uses Levenshtein Distance which is used to compare the similarity of two sequences."

Using the ExtractOne function within fuzzy wuzzy compares each song name in our Billboard data set (5000+ lines) to be compared to every song in the Spotify database (19,000 lines), it then stores the record with the highest matching score for each.  It also stores a similarity score (1 - 100) and the original id of the matching record within the Spotify dataset.  These matching records and attirbutes, along with the 'query' song from the Billboard data set were then stored in a tuple, parsed into lists and save as our 'fuzzy_df' which we've treated as a key between the two data sets.  The matching is definitely imperfect after looking through it several times.  We've contemplated several other ways to more closely match the two, however given the time, we've used this fuzzy_df to create our SQL database. 


* **L**oad: the final database, tables/collections, and why this was chosen.

Once we had our key tables, we loaded the original data sets as well as our fuzzy df into SQL.  We chose SQL as the goal of the exercise was trying to match up the two data sets based upon common strings.  Using SQL forced the data into a database that allows us to use our key table to group, sort, filter and analyze the two data sets as one queriable data set. We've also worked through merging the data set through Python into a composite dataframe for analysis as well.  See the 'merging_cleaning' Notebook for the combined dataframe which we've also exported back into CSV. 