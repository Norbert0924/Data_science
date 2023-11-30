# https://platform.stratascratch.com/coding/10176-bikes-last-used/solutions?code_type=2

dc_bikeshare_q1_2012.groupby("bike_number")['end_time'].max().reset_index()
