# https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=2

spotify_worldwide_daily_song_ranking.groupby('artist')['id'].count().reset_index(name='num_occurrences').sort_values('num_occurrences', ascending=False)
