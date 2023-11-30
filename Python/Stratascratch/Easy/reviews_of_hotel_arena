# https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=2

arena = hotel_reviews[hotel_reviews['hotel_name'] == 'Hotel Arena']
result = arena.groupby(['reviewer_score','hotel_name']).size().to_frame('number_of_reviews').reset_index()
