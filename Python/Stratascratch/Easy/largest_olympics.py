# https://platform.stratascratch.com/coding/9942-largest-olympics?code_type=2

df = olympics_athletes_events
df[['games','name']].drop_duplicates().groupby('games').size().reset_index().sort_values(0, ascending=False).head(1).rename(columns={0: 'athletes_count'})
