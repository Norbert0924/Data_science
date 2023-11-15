# https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=2

df=spotify_worldwide_daily_song_ranking
df[df['position']==1]['trackname'].value_counts().reset_index().rename(columns={'trackname': 'occurrence'})
