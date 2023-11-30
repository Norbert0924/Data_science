# https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?code_type=2

df = airbnb_units.merge(airbnb_hosts, how='left', on='host_id').drop_duplicates()
df.loc[(df['age']<30) & (df['unit_type'] == 'Apartment')].groupby('nationality').size().reset_index()
