-- Create tables for raw data to be loaded into
--drop table billboard, final_summary, fuzzy_key, spotify_song_data, spotify_songs;

CREATE TABLE billboard (
index INT PRIMARY KEY,
Rank int,
Song text,
Artist text,
Year int,
Lyrics text,
Source text,
fuzzy_name text,
fuzzy_artist text
);

CREATE TABLE spotify_songs (
index INT PRIMARY KEY,
song_name text,
artist_name text,
album_names text,
playlist text,
fuzzy_name text,
fuzzy_artist text
);

CREATE TABLE spotify_song_data (
index INT PRIMARY KEY,
song_name text,
song_popularity text,
song_duration_ms text,
acousticness numeric,
danceability numeric,
energy numeric,
instrumentalness numeric,
key int,
liveness numeric,
loudness numeric,
audio_mode int,
speechiness numeric,
tempo numeric,
time_signature int,
audio_valence numeric
);

CREATE TABLE fuzzy_key (
index INT PRIMARY KEY,
Song_Name text,
Matched_Name text,
artist text,
Ratio_Value int,
Song_List_Index text
);

CREATE TABLE final_summary (
index INT PRIMARY KEY,
Song_Name text,
Matched_Name text,
Ratio_Value int,
Artist text,
Matched_Artist text,
Artist_Ratio int,
Artist_Partial int,
Year text,
Rank int,
acousticness numeric,
danceability numeric,
energy numeric,
instrumentalness numeric,
key int,
liveness numeric,
loudness numeric,
audio_mode int,
speechiness numeric,
tempo numeric,
time_signature int,
audio_valence numeric,
Artist_Ratio_Boolean text
);

select * from billboard;
select * from final_summary;
select * from fuzzy_key;
select * from spotify_song_data;
select * from spotify_songs;

select * from final_summary where ratio_value = 100;