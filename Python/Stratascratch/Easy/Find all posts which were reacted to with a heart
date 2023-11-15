# https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=2

df= pd.merge(facebook_reactions,facebook_posts,how='left',on ='post_id')
df[df['reaction']=='heart'][['post_id','poster_x','post_text','post_keywords','post_date']].drop_duplicates()

